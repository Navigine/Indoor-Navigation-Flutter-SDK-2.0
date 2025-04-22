import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';

import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_sdk_method_channel.dart';

final nativeLibrary = _loadNativeLibrary(_getLibraryPath("navigine"));

const unknownError = -1;

DynamicLibrary _loadNativeLibrary(String nativeLibraryPath) {
  try {
    return DynamicLibrary.open(nativeLibraryPath);
  } catch (e) {
    return DynamicLibrary.process();
  }
}

String _getLibraryPath(String nativeLibraryName) {
  if (Platform.isWindows) return 'lib$nativeLibraryName.dll';
  if (Platform.isMacOS || Platform.isIOS) return 'lib$nativeLibraryName.dylib';
  return 'lib$nativeLibraryName.so';
}

dynamic catchArgumentError(Function f) {
  try {
    return f();
  } on ArgumentError catch (e) {
    throw ArgumentError("Failed to resolve an FFI function. Perhaps `initNavigineSdk()` was not called.\n" + e.message);
  }
}

final _executeWork = catchArgumentError(() => nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_execute_executeWork'));

final _libraryDartDlIsInit = catchArgumentError(() => nativeLibrary.lookupFunction<
    Bool Function(),
    bool Function()
  >('library_dart_is_init'));

final _libraryDartDlInit = catchArgumentError(() => nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_dart_init'));

final _isolateReceivePort = ReceivePort()..listen(_notifyHandler);

void _notifyHandler(dynamic data) {
  final event = Pointer<Void>.fromAddress(data as int);
  _executeWork(event);
}

int createExecutePort() {
  return _isolateReceivePort.sendPort.nativePort;
}

int createPortWithCallback(void Function(dynamic) callback) {
  final port = ReceivePort()..listen(callback);
  return port.sendPort.nativePort;
}

Future<void> initNavigineSdk() async {
  if (_libraryDartDlIsInit()) return;

  _libraryDartDlInit(NativeApi.initializeApiDLData);
  await SdkMethodChannel('navigine_sdk').invokeMethod('init');
}

final class AsyncCallbackData extends Struct {
  @Int()
  external int command;
  external Pointer<Void> nativeObject;
  external Pointer<Void> nativeData;
}

const _DestructPlatformObjectAndFreeCallbackData = 0;
const _GetPlatformObjectData = 1;

abstract class AsyncDispatcherHeap<T> {
  final Map<Pointer<Void>, T> _heap = {};
  final ReceivePort _port = ReceivePort();

  AsyncDispatcherHeap() {
    _port.listen(_handler);
  }

  void requestData(T object, Pointer<Void> nativeData);

  int get sendPort => _port.sendPort.nativePort;

  void _removeObject(Pointer<Void> nativeObject) {
    _heap.remove(nativeObject);
  }

  void insertObject(Pointer<Void> nativeObject, T platformObject) {
    _heap[nativeObject] = platformObject;
  }

  T findObject(Pointer<Void> nativeObject) {
    return _heap[nativeObject]!;
  }

  void _handler(dynamic data) {
    final dataPtr = Pointer<AsyncCallbackData>.fromAddress(data as int);
    final callbackData = dataPtr.ref;

    switch (callbackData.command) {
      case _DestructPlatformObjectAndFreeCallbackData:
        _removeObject(callbackData.nativeObject);
        malloc.free(dataPtr);
        break;
      case _GetPlatformObjectData:
        requestData(_heap[callbackData.nativeObject]!, callbackData.nativeData);
        break;
      default:
        assert(false);
    }
  }
}