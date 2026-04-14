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

    @override
    List<RouteNode> nodes() {
        final _nodesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RoutePath_nodes'));
        final _handle = this.handle;
        final __resultHandle = _nodesFfi(_handle, );
        final _result = navigine_sdk_flutter_List_RouteNode_FromFfi(__resultHandle);
        navigine_sdk_flutter_List_RouteNode_ReleaseFfiHandle(__resultHandle);
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


    double get weight {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_RoutePath_weight_get'));

        final _handle = this.handle;
        final _weightHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_double_FromFfi(_weightHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_weightHandle);
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

final _navigine_sdk_flutter_List_RouteNode_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_RouteNode_create_handle'));

final _navigine_sdk_flutter_List_RouteNode_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteNode_release_handle'));

final _navigine_sdk_flutter_List_RouteNode_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteNode_insert'));

final _navigine_sdk_flutter_List_RouteNode_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteNode_iterator'));

final _navigine_sdk_flutter_List_RouteNode_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteNode_iterator_release_handle'));

final _navigine_sdk_flutter_List_RouteNode_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteNode_iterator_is_valid'));

final _navigine_sdk_flutter_List_RouteNode_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteNode_iterator_increment'));

final _navigine_sdk_flutter_List_RouteNode_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteNode_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_RouteNode_ToFfi(List<RouteNode> value)  {
    final _result = _navigine_sdk_flutter_List_RouteNode_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_RouteNode_ToFfi(element);
        _navigine_sdk_flutter_List_RouteNode_Insert(_result, _elementHandle);
        navigine_sdk_flutter_RouteNode_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<RouteNode> navigine_sdk_flutter_List_RouteNode_FromFfi(Pointer<Void> handle)  {
    final result = List<RouteNode>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_RouteNode_Iterator(handle);
    while (_navigine_sdk_flutter_List_RouteNode_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_RouteNode_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_RouteNode_FromFfi(_elementHandle));
        navigine_sdk_flutter_RouteNode_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_RouteNode_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_RouteNode_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_RouteNode_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_RouteNode_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteNode_create_handle_nullable'));

final _navigine_sdk_flutter_List_RouteNode_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteNode_release_handle_nullable'));

final _navigine_sdk_flutter_List_RouteNode_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteNode_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_RouteNode_ToFfiNullable(List<RouteNode>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_RouteNode_ToFfi(value);
    final result = _navigine_sdk_flutter_List_RouteNode_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_RouteNode_ReleaseFfiHandle(_handle);
    return result;
}

List<RouteNode>? navigine_sdk_flutter_List_RouteNode_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_RouteNode_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_RouteNode_FromFfi(_handle);
    navigine_sdk_flutter_List_RouteNode_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_RouteNode_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_RouteNode_ReleaseHandleNullable(handle);
