part of 'route_path.dart';

// RoutePath "private" section, not exported.

final _navigine_sdk_flutter_RoutePath_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RoutePath_copy_handle'));

final _navigine_sdk_flutter_RoutePath_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RoutePath_release_handle'));

final _navigine_sdk_flutter_RoutePath_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RoutePath_free');


class RoutePath$Impl extends __lib.NativeBase implements RoutePath, Finalizable {
    RoutePath$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RoutePath_free.cast());

    @override
    RoutePath head(double advance) {
        final _headFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Float),
            Pointer<Void> Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RoutePath_head__Advance'));
        final _advanceHandle = navigine_sdk_flutter_double_ToFfi(advance);
        final _handle = this.handle;
        final __resultHandle = _headFfi(_handle, _advanceHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_advanceHandle);
        final _result = navigine_sdk_flutter_RoutePath_FromFfi(__resultHandle);
        navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    RoutePath tail(double advance) {
        final _tailFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Float),
            Pointer<Void> Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RoutePath_tail__Advance'));
        final _advanceHandle = navigine_sdk_flutter_double_ToFfi(advance);
        final _handle = this.handle;
        final __resultHandle = _tailFfi(_handle, _advanceHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_advanceHandle);
        final _result = navigine_sdk_flutter_RoutePath_FromFfi(__resultHandle);
        navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(__resultHandle);
        return _result;
    }


    double get length {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_RoutePath_length_get'));

        final _handle = this.handle;
        final _lengthHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_double_FromFfi(_lengthHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_lengthHandle);
        return _result;
    }


    List<RouteEvent> get events {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_RoutePath_events_get'));

        final _handle = this.handle;
        final _eventsHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_List_RouteEvent_FromFfi(_eventsHandle);
        navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandle(_eventsHandle);
        return _result;
    }


    List<LocationPoint> get points {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_RoutePath_points_get'));

        final _handle = this.handle;
        final _pointsHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_List_LocationPoint_FromFfi(_pointsHandle);
        navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandle(_pointsHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_RoutePath_ToFfi(RoutePath value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_RoutePath_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

RoutePath navigine_sdk_flutter_RoutePath_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_RoutePath_CopyHandle(handle);
    final result = RoutePath$Impl(_copiedHandle);
    RoutePath$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_RoutePath_ToFfiNullable(RoutePath? value) => 
  value != null ? navigine_sdk_flutter_RoutePath_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_RoutePath_ReleaseHandle(handle);

void navigine_sdk_flutter_RoutePath_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_RoutePath_ReleaseHandle(handle);

RoutePath? navigine_sdk_flutter_RoutePath_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_RoutePath_FromFfi(handle) : null;

// End of RoutePath "private" section.

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

final _navigine_sdk_flutter_List_LocationPoint_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_LocationPoint_create_handle'));

final _navigine_sdk_flutter_List_LocationPoint_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_release_handle'));

final _navigine_sdk_flutter_List_LocationPoint_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_insert'));

final _navigine_sdk_flutter_List_LocationPoint_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_iterator'));

final _navigine_sdk_flutter_List_LocationPoint_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_iterator_release_handle'));

final _navigine_sdk_flutter_List_LocationPoint_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_iterator_is_valid'));

final _navigine_sdk_flutter_List_LocationPoint_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_iterator_increment'));

final _navigine_sdk_flutter_List_LocationPoint_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_LocationPoint_ToFfi(List<LocationPoint> value)  {
    final _result = _navigine_sdk_flutter_List_LocationPoint_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_LocationPoint_ToFfi(element);
        _navigine_sdk_flutter_List_LocationPoint_Insert(_result, _elementHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<LocationPoint> navigine_sdk_flutter_List_LocationPoint_FromFfi(Pointer<Void> handle)  {
    final result = List<LocationPoint>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_LocationPoint_Iterator(handle);
    while (_navigine_sdk_flutter_List_LocationPoint_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_LocationPoint_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_LocationPoint_FromFfi(_elementHandle));
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_LocationPoint_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_LocationPoint_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_LocationPoint_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_create_handle_nullable'));

final _navigine_sdk_flutter_List_LocationPoint_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_release_handle_nullable'));

final _navigine_sdk_flutter_List_LocationPoint_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_LocationPoint_ToFfiNullable(List<LocationPoint>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_LocationPoint_ToFfi(value);
    final result = _navigine_sdk_flutter_List_LocationPoint_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandle(_handle);
    return result;
}

List<LocationPoint>? navigine_sdk_flutter_List_LocationPoint_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_LocationPoint_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_LocationPoint_FromFfi(_handle);
    navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_LocationPoint_ReleaseHandleNullable(handle);
