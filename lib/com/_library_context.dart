

import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'package:meta/meta.dart';

import 'package:navigine_sdk/com/_sdk_method_channel.dart';

final nativeLibrary = _nativeLibrary ?? _loadNativeLibrary(_getLibraryPath("navigine"));
DynamicLibrary? _nativeLibrary;

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
    throw ArgumentError("Failed to resolve an FFI function. Perhaps `LibraryContext.init()` was not called.\n" + e.message);
  }
}

final _libraryCallbacksQueueInit = catchArgumentError(() => nativeLibrary.lookupFunction<
    Int32 Function(Uint8),
    int Function(int)
  >('library_callbacks_queue_init'));
final _libraryCallbacksQueueRelease = catchArgumentError(() => nativeLibrary.lookupFunction<
    Void Function(Int32),
    void Function(int)
  >('library_callbacks_queue_release'));
final _libraryWaitForCallbacks = catchArgumentError(() => nativeLibrary.lookupFunction<
    Uint8 Function(Int32),
    int Function(int)
  >('library_wait_for_callbacks'));
final _libraryExecuteCallbacks = catchArgumentError(() => nativeLibrary.lookupFunction<
    Void Function(Int32),
    void Function(int)
  >('library_execute_callbacks'));

final _executeWork = catchArgumentError(() => nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_execute_executeWork'));

class _SentryIsolateMessage {
  _SentryIsolateMessage(this.port, this.isolateId, this.nativeLibraryPath);
  final SendPort port;
  final int isolateId;
  final String? nativeLibraryPath;
}

enum IsolateOrigin {
  main,
  spawned
}

enum WaitCallbackResult {
  stopped,
  hasIncoming,
  timedOut
}

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

class LibraryContext {
  static int get isolateId => _isolateId;

  static int _isolateId = -1;
  static late StreamSubscription _callbackStream;

  /// [nativeLibraryPath] is an optional parameter specifying a path to native shared library
  /// binary. If omitted (null) automatic library loading is attempted as a fallback. If loading
  /// fails, current process is used as a native library instead.
  static void init(IsolateOrigin isolateOrigin, {String? nativeLibraryPath}) {
    _loadCustomLibrary(nativeLibraryPath);
    SdkMethodChannel('navigine_sdk').invokeMethod('init');
    _initializeDartDl();
    _isolateId = _libraryCallbacksQueueInit(isolateOrigin == IsolateOrigin.main ? 1 : 0);

    final receivePort = ReceivePort();
    Isolate.spawn(_sentryIsolate, _SentryIsolateMessage(receivePort.sendPort, isolateId, nativeLibraryPath));
    _callbackStream = receivePort.listen((dynamic _) { _libraryExecuteCallbacks(isolateId); });
  }

  static void release() {
    _callbackStream.cancel();
    _libraryCallbacksQueueRelease(isolateId);
  }

  static void _sentryIsolate(_SentryIsolateMessage message) {
    _loadCustomLibrary(message.nativeLibraryPath);

    WaitCallbackResult waitResult = WaitCallbackResult.stopped;
    do {
      waitResult = WaitCallbackResult.values[_libraryWaitForCallbacks(message.isolateId)];
      if (waitResult == WaitCallbackResult.hasIncoming) {
        message.port.send(1);
      }
    } while (waitResult != WaitCallbackResult.stopped);
    message.port.send(0);
  }

  static void _loadCustomLibrary(String? nativeLibraryPath) {
    if (nativeLibraryPath != null) _nativeLibrary = _loadNativeLibrary(nativeLibraryPath);
  }

  static void _initializeDartDl() {
    final _libraryDartDlInit = catchArgumentError(() => nativeLibrary.lookupFunction<
        Int32 Function(Pointer<Void>),
        int Function(Pointer<Void>)
      >('library_dart_dl_initialize'));

    if (_libraryDartDlInit(NativeApi.initializeApiDLData) != 1) {
      throw UnsupportedError("Unsupported version of Dart DL API. FFI 1.0 (Dart 2.12) or newer is required.");
    }
  }
}
