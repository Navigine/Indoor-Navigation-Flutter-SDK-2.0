import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

abstract class Venue {


    Point get point;
    int get locationId;
    int get sublocationId;
    int get id;
    String get name;
    String get phone;
    String get descript;
    String get alias;
    int get categoryId;
    String? get imageUrl;


}

// Venue "private" section, not exported.

final _navigine_sdk_flutter_Venue_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Venue_copy_handle'));

final _navigine_sdk_flutter_Venue_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_Venue_register_finalizer'));

final _navigine_sdk_flutter_Venue_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Venue_get_type_id'));

final _navigine_sdk_flutter_Venue_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Venue_release_handle'));

final _navigine_sdk_flutter_Venue_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_Venue_create_proxy'));


class Venue$Impl extends __lib.NativeBase implements Venue {

    Venue$Impl(Pointer<Void> handle) : super(handle);


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_point_get'));

        final _handle = this.handle;
        final _pointHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_Point_FromFfi(_pointHandle);
        }
        finally  {
            navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        }
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_locationId_get'));

        final _handle = this.handle;
        final _locationIdHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_locationIdHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
        }
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_sublocationId_get'));

        final _handle = this.handle;
        final _sublocationIdHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_sublocationIdHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
        }
    }


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_id_get'));

        final _handle = this.handle;
        final _idHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_idHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        }
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_nameHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        }
    }


    String get phone {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_phone_get'));

        final _handle = this.handle;
        final _phoneHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_phoneHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_phoneHandle);
        }
    }


    String get descript {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_descript_get'));

        final _handle = this.handle;
        final _descriptHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_descriptHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_descriptHandle);
        }
    }


    String get alias {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_alias_get'));

        final _handle = this.handle;
        final _aliasHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_aliasHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_aliasHandle);
        }
    }


    int get categoryId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_categoryId_get'));

        final _handle = this.handle;
        final _categoryIdHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_categoryIdHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_categoryIdHandle);
        }
    }


    String? get imageUrl {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Venue_imageUrl_get'));

        final _handle = this.handle;
        final _imageUrlHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfiNullable(_imageUrlHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandleNullable(_imageUrlHandle);
        }
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
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is Venue) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_Venue_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_Venue_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : Venue$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_Venue_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
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
