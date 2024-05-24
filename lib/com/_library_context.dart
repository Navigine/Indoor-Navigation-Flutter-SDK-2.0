import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'package:meta/meta.dart';

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

@internal
int createExecutePort() {
  return _isolateReceivePort.sendPort.nativePort;
}

@internal
int createPortWithCallback(void Function(dynamic) callback) {
  final port = ReceivePort()..listen(callback);
  return port.sendPort.nativePort;
}

Future<void> initNavigineSdk() async {
  if (_libraryDartDlIsInit()) return;

  _libraryDartDlInit(NativeApi.initializeApiDLData);
  await SdkMethodChannel('navigine_sdk').invokeMethod('init');
}
