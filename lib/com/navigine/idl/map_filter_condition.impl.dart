part of 'map_filter_condition.dart';

// MapFilterCondition "private" section, not exported.

final _navigine_sdk_flutter_MapFilterCondition_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_MapFilterCondition_create_handle'));

final _navigine_sdk_flutter_MapFilterCondition_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapFilterCondition_release_handle'));

final _navigine_sdk_flutter_MapFilterCondition_GetFieldproperty = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapFilterCondition_get_field_property'));

final _navigine_sdk_flutter_MapFilterCondition_GetFieldvalues = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapFilterCondition_get_field_values'));


Pointer<Void> navigine_sdk_flutter_MapFilterCondition_ToFfi(MapFilterCondition value) {
    final _propertyHandle = navigine_sdk_flutter_String_ToFfi(value.property);
    final _valuesHandle = navigine_sdk_flutter_List_String_ToFfi(value.values);
    final _result = _navigine_sdk_flutter_MapFilterCondition_CreateHandle(_propertyHandle, _valuesHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_propertyHandle);
    navigine_sdk_flutter_List_String_ReleaseFfiHandle(_valuesHandle);
    return _result;
}

MapFilterCondition navigine_sdk_flutter_MapFilterCondition_FromFfi(Pointer<Void> handle) {
    final _propertyHandle = _navigine_sdk_flutter_MapFilterCondition_GetFieldproperty(handle);
    final _valuesHandle = _navigine_sdk_flutter_MapFilterCondition_GetFieldvalues(handle);
    final _result = MapFilterCondition(
      navigine_sdk_flutter_String_FromFfi(_propertyHandle),
      navigine_sdk_flutter_List_String_FromFfi(_valuesHandle),
    );
      navigine_sdk_flutter_String_ReleaseFfiHandle(_propertyHandle);
      navigine_sdk_flutter_List_String_ReleaseFfiHandle(_valuesHandle);
    return _result;
}

void navigine_sdk_flutter_MapFilterCondition_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_MapFilterCondition_ReleaseHandle(handle);

final _navigine_sdk_flutter_MapFilterCondition_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapFilterCondition_create_handle_nullable'));

final _navigine_sdk_flutter_MapFilterCondition_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapFilterCondition_release_handle_nullable'));

final _navigine_sdk_flutter_MapFilterCondition_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapFilterCondition_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_MapFilterCondition_ToFfiNullable(MapFilterCondition? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_MapFilterCondition_ToFfi(value);
    final result = _navigine_sdk_flutter_MapFilterCondition_CreateHandleNullable(_handle);
    navigine_sdk_flutter_MapFilterCondition_ReleaseFfiHandle(_handle);
    return result;
}

MapFilterCondition? navigine_sdk_flutter_MapFilterCondition_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_MapFilterCondition_GetValueNullable(handle);
    final result = navigine_sdk_flutter_MapFilterCondition_FromFfi(_handle);
    navigine_sdk_flutter_MapFilterCondition_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_MapFilterCondition_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_MapFilterCondition_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_String_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_String_create_handle'));

final _navigine_sdk_flutter_List_String_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_release_handle'));

final _navigine_sdk_flutter_List_String_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_String_insert'));

final _navigine_sdk_flutter_List_String_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator'));

final _navigine_sdk_flutter_List_String_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_release_handle'));

final _navigine_sdk_flutter_List_String_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_is_valid'));

final _navigine_sdk_flutter_List_String_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_increment'));

final _navigine_sdk_flutter_List_String_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_String_ToFfi(List<String> value)  {
    final _result = _navigine_sdk_flutter_List_String_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_String_ToFfi(element);
        _navigine_sdk_flutter_List_String_Insert(_result, _elementHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<String> navigine_sdk_flutter_List_String_FromFfi(Pointer<Void> handle)  {
    final result = List<String>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_String_Iterator(handle);
    while (_navigine_sdk_flutter_List_String_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_String_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_String_FromFfi(_elementHandle));
        navigine_sdk_flutter_String_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_String_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_String_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_String_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_String_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_create_handle_nullable'));

final _navigine_sdk_flutter_List_String_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_release_handle_nullable'));

final _navigine_sdk_flutter_List_String_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_String_ToFfiNullable(List<String>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_String_ToFfi(value);
    final result = _navigine_sdk_flutter_List_String_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_String_ReleaseFfiHandle(_handle);
    return result;
}

List<String>? navigine_sdk_flutter_List_String_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_String_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_String_FromFfi(_handle);
    navigine_sdk_flutter_List_String_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_String_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_String_ReleaseHandleNullable(handle);
