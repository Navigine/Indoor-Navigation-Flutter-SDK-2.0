import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/route_event_type.dart';

class RouteEvent {
    RouteEventType type;
    int value;
    double distance;
    RouteEvent(this.type, this.value, this.distance);
}

// RouteEvent "private" section, not exported.

final _navigine_sdk_flutter_RouteEvent_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32, Int32, Float),
    Pointer<Void> Function(int, int, double)
  >('navigine_sdk_flutter_RouteEvent_create_handle'));

final _navigine_sdk_flutter_RouteEvent_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_release_handle'));

final _navigine_sdk_flutter_RouteEvent_GetFieldtype = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_get_field_type'));

final _navigine_sdk_flutter_RouteEvent_GetFieldvalue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_get_field_value'));

final _navigine_sdk_flutter_RouteEvent_GetFielddistance = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_get_field_distance'));


Pointer<Void> navigine_sdk_flutter_RouteEvent_ToFfi(RouteEvent value) {
    final _typeHandle = navigine_sdk_flutter_RouteEventType_ToFfi(value.type);
    final _valueHandle = navigine_sdk_flutter_int_ToFfi(value.value);
    final _distanceHandle = navigine_sdk_flutter_double_ToFfi(value.distance);
    final _result = _navigine_sdk_flutter_RouteEvent_CreateHandle(_typeHandle, _valueHandle, _distanceHandle);
    navigine_sdk_flutter_RouteEventType_ReleaseFfiHandle(_typeHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_valueHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_distanceHandle);
    return _result;
}

RouteEvent navigine_sdk_flutter_RouteEvent_FromFfi(Pointer<Void> handle) {
    final _typeHandle = _navigine_sdk_flutter_RouteEvent_GetFieldtype(handle);
    final _valueHandle = _navigine_sdk_flutter_RouteEvent_GetFieldvalue(handle);
    final _distanceHandle = _navigine_sdk_flutter_RouteEvent_GetFielddistance(handle);
    try  {
        return RouteEvent(
          navigine_sdk_flutter_RouteEventType_FromFfi(_typeHandle),
          navigine_sdk_flutter_int_FromFfi(_valueHandle),
          navigine_sdk_flutter_double_FromFfi(_distanceHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_RouteEventType_ReleaseFfiHandle(_typeHandle);
          navigine_sdk_flutter_int_ReleaseFfiHandle(_valueHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_distanceHandle);
    }
}

void navigine_sdk_flutter_RouteEvent_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_RouteEvent_ReleaseHandle(handle);

final _navigine_sdk_flutter_RouteEvent_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_create_handle_nullable'));

final _navigine_sdk_flutter_RouteEvent_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_release_handle_nullable'));

final _navigine_sdk_flutter_RouteEvent_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_RouteEvent_ToFfiNullable(RouteEvent? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_RouteEvent_ToFfi(value);
    final result = _navigine_sdk_flutter_RouteEvent_CreateHandleNullable(_handle);
    navigine_sdk_flutter_RouteEvent_ReleaseFfiHandle(_handle);
    return result;
}

RouteEvent? navigine_sdk_flutter_RouteEvent_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_RouteEvent_GetValueNullable(handle);
    final result = navigine_sdk_flutter_RouteEvent_FromFfi(_handle);
    navigine_sdk_flutter_RouteEvent_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_RouteEvent_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_RouteEvent_ReleaseHandleNullable(handle);
