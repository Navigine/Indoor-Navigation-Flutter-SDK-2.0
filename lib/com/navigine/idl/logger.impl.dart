part of 'logger.dart';

// Logger "private" section, not exported.

final _navigine_sdk_flutter_Logger_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Logger_check'));

final _navigine_sdk_flutter_Logger_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Logger_free');


class Logger$Impl implements Logger, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Logger_free.cast());

    Logger$Impl.fromExternalPtr(this.ptr);

    @internal
    Logger$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Logger$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Logger_check(ptr);

    static Pointer<Void> getNativePtr(Logger? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Logger$Impl).ptr;
    }

    static Logger? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Logger$Impl.fromNativePtr(ptr);
    }

    Logger getLogger() {
        final _getLoggerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(),
            Pointer<Void> Function()
          >('navigine_sdk_flutter_Logger_getLogger'));
        final __resultHandle = _getLoggerFfi();
        final _result = Logger$Impl.fromNativePtr(__resultHandle);
        return _result;
    }
    @override
    void subscribe(LogListener listener) {
        final _subscribeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_Logger_subscribe__Listener'));
        _subscribeFfi(this.ptr, LogListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void unsubscribe(LogListener listener) {
        final _unsubscribeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_Logger_unsubscribe__Listener'));
        _unsubscribeFfi(this.ptr, LogListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }




}

// End of Logger "private" section.
