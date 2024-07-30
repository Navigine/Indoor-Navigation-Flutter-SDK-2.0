import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon.dart';

/**
 *
 * Polygon at specified location and sublocation
 * Units: meters
 * Origin: bottom left corner
 *
 */
class LocationPolygon {
    LocationPolygon(this.polygon, this.locationId, this.sublocationId);
    /**
     *
     * Metrics polygon (@see Polygon).
     *
     */
    Polygon polygon;
    /**
     *
     * Location unique identifier in CMS
     *
     */
    int locationId;
    /**
     *
     * Sublocation unique identifier in CMS
     *
     */
    int sublocationId;
}

// LocationPolygon "private" section, not exported.

final _navigine_sdk_flutter_LocationPolygon_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int32, Int32),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationPolygon_create_handle'));

final _navigine_sdk_flutter_LocationPolygon_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolygon_release_handle'));

final _navigine_sdk_flutter_LocationPolygon_GetFieldpolygon = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolygon_get_field_polygon'));

final _navigine_sdk_flutter_LocationPolygon_GetFieldlocationId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolygon_get_field_locationId'));

final _navigine_sdk_flutter_LocationPolygon_GetFieldsublocationId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolygon_get_field_sublocationId'));


Pointer<Void> navigine_sdk_flutter_LocationPolygon_ToFfi(LocationPolygon value) {
    final _polygonHandle = navigine_sdk_flutter_Polygon_ToFfi(value.polygon);
    final _locationIdHandle = navigine_sdk_flutter_int_ToFfi(value.locationId);
    final _sublocationIdHandle = navigine_sdk_flutter_int_ToFfi(value.sublocationId);
    final _result = _navigine_sdk_flutter_LocationPolygon_CreateHandle(_polygonHandle, _locationIdHandle, _sublocationIdHandle);
    navigine_sdk_flutter_Polygon_ReleaseFfiHandle(_polygonHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
    return _result;
}

LocationPolygon navigine_sdk_flutter_LocationPolygon_FromFfi(Pointer<Void> handle) {
    final _polygonHandle = _navigine_sdk_flutter_LocationPolygon_GetFieldpolygon(handle);
    final _locationIdHandle = _navigine_sdk_flutter_LocationPolygon_GetFieldlocationId(handle);
    final _sublocationIdHandle = _navigine_sdk_flutter_LocationPolygon_GetFieldsublocationId(handle);
    try  {
        return LocationPolygon(
          navigine_sdk_flutter_Polygon_FromFfi(_polygonHandle),
          navigine_sdk_flutter_int_FromFfi(_locationIdHandle),
          navigine_sdk_flutter_int_FromFfi(_sublocationIdHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_Polygon_ReleaseFfiHandle(_polygonHandle);
          navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
          navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
    }
}

void navigine_sdk_flutter_LocationPolygon_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_LocationPolygon_ReleaseHandle(handle);

final _navigine_sdk_flutter_LocationPolygon_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolygon_create_handle_nullable'));

final _navigine_sdk_flutter_LocationPolygon_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolygon_release_handle_nullable'));

final _navigine_sdk_flutter_LocationPolygon_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolygon_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_LocationPolygon_ToFfiNullable(LocationPolygon? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_LocationPolygon_ToFfi(value);
    final result = _navigine_sdk_flutter_LocationPolygon_CreateHandleNullable(_handle);
    navigine_sdk_flutter_LocationPolygon_ReleaseFfiHandle(_handle);
    return result;
}

LocationPolygon? navigine_sdk_flutter_LocationPolygon_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_LocationPolygon_GetValueNullable(handle);
    final result = navigine_sdk_flutter_LocationPolygon_FromFfi(_handle);
    navigine_sdk_flutter_LocationPolygon_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_LocationPolygon_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_LocationPolygon_ReleaseHandleNullable(handle);
