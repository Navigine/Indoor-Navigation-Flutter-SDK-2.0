import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';

abstract class MapObjectPickResult implements Finalizable {


    LocationPoint get point;
    MapObject get mapObject;


}

// MapObjectPickResult "private" section, not exported.

final _navigine_sdk_flutter_MapObjectPickResult_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapObjectPickResult_copy_handle'));

final _navigine_sdk_flutter_MapObjectPickResult_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapObjectPickResult_release_handle'));

final _navigine_sdk_flutter_MapObjectPickResult_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_MapObjectPickResult_free');

final _navigine_sdk_flutter_MapObjectPickResult_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_MapObjectPickResult_create_proxy'));

final _navigine_sdk_flutter_MapObjectPickResult_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_MapObjectPickResult_set_ports'));


class MapObjectPickResult$Impl extends __lib.NativeBase implements MapObjectPickResult, Finalizable {
    MapObjectPickResult$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MapObjectPickResult_free.cast());


    LocationPoint get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_MapObjectPickResult_point_get'));

        final _handle = this.handle;
        final _pointHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_LocationPoint_FromFfi(_pointHandle);
        }
        finally  {
            navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
        }
    }


    MapObject get mapObject {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_MapObjectPickResult_mapObject_get'));

        final _handle = this.handle;
        final _mapObjectHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_MapObject_FromFfi(_mapObjectHandle);
        }
        finally  {
            navigine_sdk_flutter_MapObject_ReleaseFfiHandle(_mapObjectHandle);
        }
    }




}

Pointer<Void> navigine_sdk_flutter_MapObjectPickResult_ToFfi(MapObjectPickResult value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_MapObjectPickResult_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

MapObjectPickResult navigine_sdk_flutter_MapObjectPickResult_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_MapObjectPickResult_CopyHandle(handle);
    final result = MapObjectPickResult$Impl(_copiedHandle);
    MapObjectPickResult$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_MapObjectPickResult_ToFfiNullable(MapObjectPickResult? value) => 
  value != null ? navigine_sdk_flutter_MapObjectPickResult_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_MapObjectPickResult_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_MapObjectPickResult_ReleaseHandle(handle);

void navigine_sdk_flutter_MapObjectPickResult_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_MapObjectPickResult_ReleaseHandle(handle);

MapObjectPickResult? navigine_sdk_flutter_MapObjectPickResult_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_MapObjectPickResult_FromFfi(handle) : null;

// End of MapObjectPickResult "private" section.
