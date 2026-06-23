part of 'venue.dart';

// Venue "private" section, not exported.

final _navigine_sdk_flutter_Venue_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Venue_check'));

final _navigine_sdk_flutter_Venue_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Venue_free');


class Venue$Impl implements Venue, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Venue_free.cast());

    Venue$Impl.fromExternalPtr(this.ptr);

    @internal
    Venue$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Venue$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Venue_check(ptr);

    static Pointer<Void> getNativePtr(Venue? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Venue$Impl).ptr;
    }

    static Venue? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Venue$Impl.fromNativePtr(ptr);
    }


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PointNative Function(Pointer<Void>),
            PointNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_point_get'));

        final _pointHandle = _getFfi(this.ptr);
        final _result = PointImpl.fromNative(_pointHandle);
        exception.checkCallResult();
        return _result;
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_locationId_get'));

        final _locationIdHandle = _getFfi(this.ptr);
        final _result = _locationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_sublocationId_get'));

        final _sublocationIdHandle = _getFfi(this.ptr);
        final _result = _sublocationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_id_get'));

        final _idHandle = _getFfi(this.ptr);
        final _result = _idHandle;
        exception.checkCallResult();
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_name_get'));

        final _nameHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_nameHandle);
        exception.checkCallResult();
        return _result;
    }


    String get phone {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_phone_get'));

        final _phoneHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_phoneHandle);
        exception.checkCallResult();
        return _result;
    }


    String get descript {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_descript_get'));

        final _descriptHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_descriptHandle);
        exception.checkCallResult();
        return _result;
    }


    String get alias {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_alias_get'));

        final _aliasHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_aliasHandle);
        exception.checkCallResult();
        return _result;
    }


    int get categoryId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_categoryId_get'));

        final _categoryIdHandle = _getFfi(this.ptr);
        final _result = _categoryIdHandle;
        exception.checkCallResult();
        return _result;
    }


    String? get imageUrl {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_imageUrl_get'));

        final _imageUrlHandle = _getFfi(this.ptr);
        final _result = toPlatformFromPointerString(_imageUrlHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of Venue "private" section.
