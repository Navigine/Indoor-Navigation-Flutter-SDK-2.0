part of 'logger.dart';

// Logger "private" section, not exported.

final _navigine_sdk_flutter_Logger_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Logger_copy_handle'));

final _navigine_sdk_flutter_Logger_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Logger_release_handle'));

final _navigine_sdk_flutter_Logger_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Logger_free');


class Logger$Impl extends __lib.NativeBase implements Logger, Finalizable {
    Logger$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Logger_free.cast());

    Logger getLogger() {
        final _getLoggerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(),
            Pointer<Void> Function()
          >('navigine_sdk_flutter_Logger_getLogger'));
        final __resultHandle = _getLoggerFfi();
        final _result = navigine_sdk_flutter_Logger_FromFfi(__resultHandle);
        navigine_sdk_flutter_Logger_ReleaseFfiHandle(__resultHandle);
        return _result;
    }
    @override
    void subscribe(LogListener listener) {
        final _subscribeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_Logger_subscribe__Listener'));
        final _listenerHandle = navigine_sdk_flutter_LogListener_ToFfi(listener);
        final _handle = this.handle;
        _subscribeFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_LogListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void unsubscribe(LogListener listener) {
        final _unsubscribeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_Logger_unsubscribe__Listener'));
        final _listenerHandle = navigine_sdk_flutter_LogListener_ToFfi(listener);
        final _handle = this.handle;
        _unsubscribeFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_LogListener_ReleaseFfiHandle(_listenerHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_Logger_ToFfi(Logger value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Logger_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Logger navigine_sdk_flutter_Logger_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Logger_CopyHandle(handle);
    final result = Logger$Impl(_copiedHandle);
    Logger$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Logger_ToFfiNullable(Logger? value) => 
  value != null ? navigine_sdk_flutter_Logger_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Logger_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Logger_ReleaseHandle(handle);

void navigine_sdk_flutter_Logger_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Logger_ReleaseHandle(handle);

Logger? navigine_sdk_flutter_Logger_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Logger_FromFfi(handle) : null;

// End of Logger "private" section.
