part of 'route_node.dart';

// RouteNode "private" section, not exported.

final _navigine_sdk_flutter_RouteNode_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Float, Float, Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>, double, double, Pointer<Void>)
  >('navigine_sdk_flutter_RouteNode_create_handle'));

final _navigine_sdk_flutter_RouteNode_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteNode_release_handle'));

final _navigine_sdk_flutter_RouteNode_GetFieldpoint = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteNode_get_field_point'));

final _navigine_sdk_flutter_RouteNode_GetFieldweight = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteNode_get_field_weight'));

final _navigine_sdk_flutter_RouteNode_GetFielddistance = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteNode_get_field_distance'));

final _navigine_sdk_flutter_RouteNode_GetFieldevents = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteNode_get_field_events'));


Pointer<Void> navigine_sdk_flutter_RouteNode_ToFfi(RouteNode value) {
    final _pointHandle = navigine_sdk_flutter_LocationPoint_ToFfi(value.point);
    final _weightHandle = navigine_sdk_flutter_double_ToFfi(value.weight);
    final _distanceHandle = navigine_sdk_flutter_double_ToFfi(value.distance);
    final _eventsHandle = navigine_sdk_flutter_List_RouteEvent_ToFfi(value.events);
    final _result = _navigine_sdk_flutter_RouteNode_CreateHandle(_pointHandle, _weightHandle, _distanceHandle, _eventsHandle);
    navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_weightHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_distanceHandle);
    navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandle(_eventsHandle);
    return _result;
}

RouteNode navigine_sdk_flutter_RouteNode_FromFfi(Pointer<Void> handle) {
    final _pointHandle = _navigine_sdk_flutter_RouteNode_GetFieldpoint(handle);
    final _weightHandle = _navigine_sdk_flutter_RouteNode_GetFieldweight(handle);
    final _distanceHandle = _navigine_sdk_flutter_RouteNode_GetFielddistance(handle);
    final _eventsHandle = _navigine_sdk_flutter_RouteNode_GetFieldevents(handle);
    final _result = RouteNode(
      navigine_sdk_flutter_LocationPoint_FromFfi(_pointHandle),
      navigine_sdk_flutter_double_FromFfi(_weightHandle),
      navigine_sdk_flutter_double_FromFfi(_distanceHandle),
      navigine_sdk_flutter_List_RouteEvent_FromFfi(_eventsHandle),
    );
      navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandle(_weightHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandle(_distanceHandle);
      navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandle(_eventsHandle);
    return _result;
}

void navigine_sdk_flutter_RouteNode_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_RouteNode_ReleaseHandle(handle);

final _navigine_sdk_flutter_RouteNode_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteNode_create_handle_nullable'));

final _navigine_sdk_flutter_RouteNode_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteNode_release_handle_nullable'));

final _navigine_sdk_flutter_RouteNode_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteNode_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_RouteNode_ToFfiNullable(RouteNode? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_RouteNode_ToFfi(value);
    final result = _navigine_sdk_flutter_RouteNode_CreateHandleNullable(_handle);
    navigine_sdk_flutter_RouteNode_ReleaseFfiHandle(_handle);
    return result;
}

RouteNode? navigine_sdk_flutter_RouteNode_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_RouteNode_GetValueNullable(handle);
    final result = navigine_sdk_flutter_RouteNode_FromFfi(_handle);
    navigine_sdk_flutter_RouteNode_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_RouteNode_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_RouteNode_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_RouteEvent_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_RouteEvent_create_handle'));

final _navigine_sdk_flutter_List_RouteEvent_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_release_handle'));

final _navigine_sdk_flutter_List_RouteEvent_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_insert'));

final _navigine_sdk_flutter_List_RouteEvent_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_iterator'));

final _navigine_sdk_flutter_List_RouteEvent_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_iterator_release_handle'));

final _navigine_sdk_flutter_List_RouteEvent_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_iterator_is_valid'));

final _navigine_sdk_flutter_List_RouteEvent_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_iterator_increment'));

final _navigine_sdk_flutter_List_RouteEvent_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_RouteEvent_ToFfi(List<RouteEvent> value)  {
    final _result = _navigine_sdk_flutter_List_RouteEvent_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_RouteEvent_ToFfi(element);
        _navigine_sdk_flutter_List_RouteEvent_Insert(_result, _elementHandle);
        navigine_sdk_flutter_RouteEvent_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<RouteEvent> navigine_sdk_flutter_List_RouteEvent_FromFfi(Pointer<Void> handle)  {
    final result = List<RouteEvent>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_RouteEvent_Iterator(handle);
    while (_navigine_sdk_flutter_List_RouteEvent_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_RouteEvent_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_RouteEvent_FromFfi(_elementHandle));
        navigine_sdk_flutter_RouteEvent_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_RouteEvent_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_RouteEvent_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_RouteEvent_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_create_handle_nullable'));

final _navigine_sdk_flutter_List_RouteEvent_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_release_handle_nullable'));

final _navigine_sdk_flutter_List_RouteEvent_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_RouteEvent_ToFfiNullable(List<RouteEvent>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_RouteEvent_ToFfi(value);
    final result = _navigine_sdk_flutter_List_RouteEvent_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandle(_handle);
    return result;
}

List<RouteEvent>? navigine_sdk_flutter_List_RouteEvent_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_RouteEvent_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_RouteEvent_FromFfi(_handle);
    navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_RouteEvent_ReleaseHandleNullable(handle);
