part of 'location.dart';

// Location "private" section, not exported.

final _navigine_sdk_flutter_Location_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Location_check'));

final _navigine_sdk_flutter_Location_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Location_free');


class Location$Impl implements Location, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Location_free.cast());

    Location$Impl.fromExternalPtr(this.ptr);

    @internal
    Location$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Location$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Location_check(ptr);

    static Pointer<Void> getNativePtr(Location? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Location$Impl).ptr;
    }

    static Location? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Location$Impl.fromNativePtr(ptr);
    }

    @override
    ElevationGraph getElevationGraph(String tag) {
        final _getElevationGraphFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, NativeString),
            Pointer<Void> Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_Location_getElevationGraph__Tag'));
        final __resultHandle = _getElevationGraphFfi(this.ptr, toNativeString(tag));
        final _result = ElevationGraph$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    List<String> getGraphTags() {
        final _getGraphTagsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_Location_getGraphTags'));
        final __resultHandle = _getGraphTagsFfi(this.ptr, );
        final _result = ListStringImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    Sublocation getSublocationById(int id) {
        final _getSublocationByIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Int32),
            Pointer<Void> Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_Location_getSublocationById__Id'));
        final __resultHandle = _getSublocationByIdFfi(this.ptr, id);
        final _result = Sublocation$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    Category? getCategoryById(int id) {
        final _getCategoryByIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Int32),
            Pointer<Void> Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_Location_getCategoryById__Id'));
        final __resultHandle = _getCategoryByIdFfi(this.ptr, id);
        final _result = CategoryImpl.fromPointer(__resultHandle);
        exception.checkCallResult();
        return _result;
    }


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_id_get'));

        final _idHandle = _getFfi(this.ptr);
        final _result = _idHandle;
        exception.checkCallResult();
        return _result;
    }


    int get version {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_version_get'));

        final _versionHandle = _getFfi(this.ptr);
        final _result = _versionHandle;
        exception.checkCallResult();
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_name_get'));

        final _nameHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_nameHandle);
        exception.checkCallResult();
        return _result;
    }


    String get descript {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_descript_get'));

        final _descriptHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_descriptHandle);
        exception.checkCallResult();
        return _result;
    }


    List<Category> get categories {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_categories_get'));

        final _categoriesHandle = _getFfi(this.ptr);
        final _result = ListCategoryImpl.fromNativePtr(_categoriesHandle);
        exception.checkCallResult();
        return _result;
    }


    List<Sublocation> get sublocations {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_sublocations_get'));

        final _sublocationsHandle = _getFfi(this.ptr);
        final _result = ListSublocationImpl.fromNativePtr(_sublocationsHandle);
        exception.checkCallResult();
        return _result;
    }


    bool get modified {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_modified_get'));

        final _modifiedHandle = _getFfi(this.ptr);
        final _result = (_modifiedHandle != 0);
        exception.checkCallResult();
        return _result;
    }




}

// End of Location "private" section.
