part of 'zone.dart';

// Zone "private" section, not exported.

final _navigine_sdk_flutter_Zone_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Zone_copy_handle'));

final _navigine_sdk_flutter_Zone_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Zone_release_handle'));

final _navigine_sdk_flutter_Zone_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Zone_free');


class Zone$Impl extends __lib.NativeBase implements Zone, Finalizable {
    Zone$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Zone_free.cast());


    Polygon get polygon {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_polygon_get'));

        final _handle = this.handle;
        final _polygonHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_Polygon_FromFfi(_polygonHandle);
        navigine_sdk_flutter_Polygon_ReleaseFfiHandle(_polygonHandle);
        return _result;
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_locationId_get'));

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
          >('navigine_sdk_flutter_Zone_sublocationId_get'));

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
          >('navigine_sdk_flutter_Zone_id_get'));

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
          >('navigine_sdk_flutter_Zone_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_nameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        return _result;
    }


    String get color {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_color_get'));

        final _handle = this.handle;
        final _colorHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_colorHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_colorHandle);
        return _result;
    }


    String get alias {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_alias_get'));

        final _handle = this.handle;
        final _aliasHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_aliasHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_aliasHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_Zone_ToFfi(Zone value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Zone_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Zone navigine_sdk_flutter_Zone_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Zone_CopyHandle(handle);
    final result = Zone$Impl(_copiedHandle);
    Zone$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Zone_ToFfiNullable(Zone? value) => 
  value != null ? navigine_sdk_flutter_Zone_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Zone_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Zone_ReleaseHandle(handle);

void navigine_sdk_flutter_Zone_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Zone_ReleaseHandle(handle);

Zone? navigine_sdk_flutter_Zone_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Zone_FromFfi(handle) : null;

// End of Zone "private" section.
