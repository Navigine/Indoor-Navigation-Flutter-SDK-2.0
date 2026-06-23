part of 'resource_manager.dart';

// ResourceManager "private" section, not exported.

final _navigine_sdk_flutter_ResourceManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ResourceManager_free');


class ResourceManager$Impl implements ResourceManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ResourceManager_free.cast());

    ResourceManager$Impl.fromExternalPtr(this.ptr);

    @internal
    ResourceManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory ResourceManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        ResourceManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(ResourceManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as ResourceManager$Impl).ptr;
    }

    static ResourceManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return ResourceManager$Impl.fromNativePtr(ptr);
    }

    @override
    void loadImage(String imageUrl, ResourceListener listener) {
        final _loadImageFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, Pointer<Void>),
            void Function(Pointer<Void>, NativeString, Pointer<Void>)
          >('navigine_sdk_flutter_ResourceManager_loadImage__ImageUrl_Listener'));
        _loadImageFfi(this.ptr, toNativeString(imageUrl), ResourceListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    List<LogInfo> getLogsList() {
        final _getLogsListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_ResourceManager_getLogsList'));
        final __resultHandle = _getLogsListFfi(this.ptr, );
        final _result = ListLogInfoImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void removeLogFile(String fileName) {
        final _removeLogFileFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_ResourceManager_removeLogFile__FileName'));
        _removeLogFileFfi(this.ptr, toNativeString(fileName));
        exception.checkCallResult();
    }

    @override
    void uploadLogFile(String fileName, ResourceUploadListener listener) {
        final _uploadLogFileFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, Pointer<Void>),
            void Function(Pointer<Void>, NativeString, Pointer<Void>)
          >('navigine_sdk_flutter_ResourceManager_uploadLogFile__FileName_Listener'));
        _uploadLogFileFfi(this.ptr, toNativeString(fileName), ResourceUploadListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }




}

// End of ResourceManager "private" section.
