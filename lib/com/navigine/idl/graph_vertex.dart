import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

abstract class GraphVertex {


    int get id;
    Point get point;
    String get name;
    bool get isExternal;
    bool get isElevation;


}

// GraphVertex "private" section, not exported.

final _navigine_sdk_flutter_GraphVertex_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_GraphVertex_copy_handle'));

final _navigine_sdk_flutter_GraphVertex_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_GraphVertex_register_finalizer'));

final _navigine_sdk_flutter_GraphVertex_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_GraphVertex_get_type_id'));

final _navigine_sdk_flutter_GraphVertex_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_GraphVertex_release_handle'));

final _navigine_sdk_flutter_GraphVertex_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_GraphVertex_create_proxy'));


class GraphVertex$Impl extends __lib.NativeBase implements GraphVertex {

    GraphVertex$Impl(Pointer<Void> handle) : super(handle);


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_id_get'));

        final _handle = this.handle;
        final _idHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_idHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        }
    }


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_point_get'));

        final _handle = this.handle;
        final _pointHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_Point_FromFfi(_pointHandle);
        }
        finally  {
            navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        }
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_nameHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        }
    }


    bool get isExternal {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_isExternal_get'));

        final _handle = this.handle;
        final _isExternalHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(_isExternalHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(_isExternalHandle);
        }
    }


    bool get isElevation {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_isElevation_get'));

        final _handle = this.handle;
        final _isElevationHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(_isElevationHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(_isElevationHandle);
        }
    }




}
Pointer<Void> navigine_sdk_flutter_GraphVertex_ToFfi(GraphVertex value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_GraphVertex_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

GraphVertex navigine_sdk_flutter_GraphVertex_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is GraphVertex) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_GraphVertex_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_GraphVertex_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : GraphVertex$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_GraphVertex_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
    return result;
}

Pointer<Void> navigine_sdk_flutter_GraphVertex_ToFfiNullable(GraphVertex? value) => 
  value != null ? navigine_sdk_flutter_GraphVertex_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_GraphVertex_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_GraphVertex_ReleaseHandle(handle);

void navigine_sdk_flutter_GraphVertex_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_GraphVertex_ReleaseHandle(handle);

GraphVertex? navigine_sdk_flutter_GraphVertex_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_GraphVertex_FromFfi(handle) : null;

// End of GraphVertex "private" section.
