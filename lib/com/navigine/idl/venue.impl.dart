part of 'venue.dart';

// Venue "private" section, not exported.

final _navigine_sdk_flutter_Venue_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Venue_copy_handle'));

final _navigine_sdk_flutter_Venue_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Venue_release_handle'));

final _navigine_sdk_flutter_Venue_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Venue_free');


class Venue$Impl extends __lib.NativeBase implements Venue, Finalizable {
    Venue$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Venue_free.cast());


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_point_get'));

        final _handle = this.handle;
        final _pointHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_Point_FromFfi(_pointHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        return _result;
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_locationId_get'));

        final _handle = this.handle;
        final _locationIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_locationIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
        return _result;
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_sublocationId_get'));

        final _handle = this.handle;
        final _sublocationIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_sublocationIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
        return _result;
    }


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_id_get'));

        final _handle = this.handle;
        final _idHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_idHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_nameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        return _result;
    }


    String get phone {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_phone_get'));

        final _handle = this.handle;
        final _phoneHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_phoneHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_phoneHandle);
        return _result;
    }


    String get descript {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_descript_get'));

        final _handle = this.handle;
        final _descriptHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_descriptHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_descriptHandle);
        return _result;
    }


    String get alias {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_alias_get'));

        final _handle = this.handle;
        final _aliasHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_aliasHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_aliasHandle);
        return _result;
    }


    int get categoryId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_categoryId_get'));

        final _handle = this.handle;
        final _categoryIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_categoryIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_categoryIdHandle);
        return _result;
    }


    String? get imageUrl {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_imageUrl_get'));

        final _handle = this.handle;
        final _imageUrlHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfiNullable(_imageUrlHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandleNullable(_imageUrlHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_Venue_ToFfi(Venue value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Venue_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Venue navigine_sdk_flutter_Venue_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Venue_CopyHandle(handle);
    final result = Venue$Impl(_copiedHandle);
    Venue$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Venue_ToFfiNullable(Venue? value) => 
  value != null ? navigine_sdk_flutter_Venue_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Venue_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Venue_ReleaseHandle(handle);

void navigine_sdk_flutter_Venue_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Venue_ReleaseHandle(handle);

Venue? navigine_sdk_flutter_Venue_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Venue_FromFfi(handle) : null;

// End of Venue "private" section.
