part of 'route_manager.dart';

// RouteManager "private" section, not exported.

final _navigine_sdk_flutter_RouteManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteManager_copy_handle'));

final _navigine_sdk_flutter_RouteManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteManager_release_handle'));

final _navigine_sdk_flutter_RouteManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteManager_free');


class RouteManager$Impl extends __lib.NativeBase implements RouteManager, Finalizable {
    RouteManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteManager_free.cast());

    @override
    RoutePath makeRoute(LocationPoint from, LocationPoint to) {
        final _makeRouteFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteManager_makeRoute__From_To'));
        final _fromHandle = navigine_sdk_flutter_LocationPoint_ToFfi(from);
        final _toHandle = navigine_sdk_flutter_LocationPoint_ToFfi(to);
        final _handle = this.handle;
        final __resultHandle = _makeRouteFfi(_handle, _fromHandle, _toHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_fromHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_toHandle);
        final _result = navigine_sdk_flutter_RoutePath_FromFfi(__resultHandle);
        navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    List<RoutePath> makeRoutes(LocationPoint from, List<LocationPoint> to) {
        final _makeRoutesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteManager_makeRoutes__From_To'));
        final _fromHandle = navigine_sdk_flutter_LocationPoint_ToFfi(from);
        final _toHandle = navigine_sdk_flutter_List_LocationPoint_ToFfi(to);
        final _handle = this.handle;
        final __resultHandle = _makeRoutesFfi(_handle, _fromHandle, _toHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_fromHandle);
        navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandle(_toHandle);
        final _result = navigine_sdk_flutter_List_RoutePath_FromFfi(__resultHandle);
        navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    void setTarget(LocationPoint target) {
        final _setTargetFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteManager_setTarget__Target'));
        final _targetHandle = navigine_sdk_flutter_LocationPoint_ToFfi(target);
        final _handle = this.handle;
        _setTargetFfi(_handle, _targetHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_targetHandle);
    }

    @override
    void addTarget(LocationPoint target) {
        final _addTargetFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteManager_addTarget__Target'));
        final _targetHandle = navigine_sdk_flutter_LocationPoint_ToFfi(target);
        final _handle = this.handle;
        _addTargetFfi(_handle, _targetHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_targetHandle);
    }

    @override
    void cancelTarget() {
        final _cancelTargetFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteManager_cancelTarget'));
        final _handle = this.handle;
        _cancelTargetFfi(_handle, );
    }

    @override
    void clearTargets() {
        final _clearTargetsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteManager_clearTargets'));
        final _handle = this.handle;
        _clearTargetsFfi(_handle, );
    }

    @override
    void setGraphTag(String tag) {
        final _setGraphTagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteManager_setGraphTag__Tag'));
        final _tagHandle = navigine_sdk_flutter_String_ToFfi(tag);
        final _handle = this.handle;
        _setGraphTagFfi(_handle, _tagHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_tagHandle);
    }

    @override
    String getGraphTag() {
        final _getGraphTagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteManager_getGraphTag'));
        final _handle = this.handle;
        final __resultHandle = _getGraphTagFfi(_handle, );
        final _result = navigine_sdk_flutter_String_FromFfi(__resultHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    List<String> getGraphTags() {
        final _getGraphTagsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteManager_getGraphTags'));
        final _handle = this.handle;
        final __resultHandle = _getGraphTagsFfi(_handle, );
        final _result = navigine_sdk_flutter_List_String_FromFfi(__resultHandle);
        navigine_sdk_flutter_List_String_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    void addRouteListener(RouteListener listener) {
        final _addRouteListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteManager_addRouteListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_RouteListener_ToFfi(listener);
        final _handle = this.handle;
        _addRouteListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_RouteListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeRouteListener(RouteListener listener) {
        final _removeRouteListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteManager_removeRouteListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_RouteListener_ToFfi(listener);
        final _handle = this.handle;
        _removeRouteListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_RouteListener_ReleaseFfiHandle(_listenerHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_RouteManager_ToFfi(RouteManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_RouteManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

RouteManager navigine_sdk_flutter_RouteManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_RouteManager_CopyHandle(handle);
    final result = RouteManager$Impl(_copiedHandle);
    RouteManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_RouteManager_ToFfiNullable(RouteManager? value) => 
  value != null ? navigine_sdk_flutter_RouteManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_RouteManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_RouteManager_ReleaseHandle(handle);

void navigine_sdk_flutter_RouteManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_RouteManager_ReleaseHandle(handle);

RouteManager? navigine_sdk_flutter_RouteManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_RouteManager_FromFfi(handle) : null;

// End of RouteManager "private" section.

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

final _navigine_sdk_flutter_List_RoutePath_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_RoutePath_create_handle'));

final _navigine_sdk_flutter_List_RoutePath_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_release_handle'));

final _navigine_sdk_flutter_List_RoutePath_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_insert'));

final _navigine_sdk_flutter_List_RoutePath_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator'));

final _navigine_sdk_flutter_List_RoutePath_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_release_handle'));

final _navigine_sdk_flutter_List_RoutePath_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_is_valid'));

final _navigine_sdk_flutter_List_RoutePath_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_increment'));

final _navigine_sdk_flutter_List_RoutePath_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_RoutePath_ToFfi(List<RoutePath> value)  {
    final _result = _navigine_sdk_flutter_List_RoutePath_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_RoutePath_ToFfi(element);
        _navigine_sdk_flutter_List_RoutePath_Insert(_result, _elementHandle);
        navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<RoutePath> navigine_sdk_flutter_List_RoutePath_FromFfi(Pointer<Void> handle)  {
    final result = List<RoutePath>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_RoutePath_Iterator(handle);
    while (_navigine_sdk_flutter_List_RoutePath_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_RoutePath_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_RoutePath_FromFfi(_elementHandle));
        navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_RoutePath_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_RoutePath_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_RoutePath_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_create_handle_nullable'));

final _navigine_sdk_flutter_List_RoutePath_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_release_handle_nullable'));

final _navigine_sdk_flutter_List_RoutePath_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_RoutePath_ToFfiNullable(List<RoutePath>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_RoutePath_ToFfi(value);
    final result = _navigine_sdk_flutter_List_RoutePath_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(_handle);
    return result;
}

List<RoutePath>? navigine_sdk_flutter_List_RoutePath_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_RoutePath_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_RoutePath_FromFfi(_handle);
    navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_RoutePath_ReleaseHandleNullable(handle);

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
