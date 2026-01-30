part of 'user_location_layer.dart';

// UserLocationLayer "private" section, not exported.

final _navigine_sdk_flutter_UserLocationLayer_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_UserLocationLayer_copy_handle'));

final _navigine_sdk_flutter_UserLocationLayer_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_UserLocationLayer_release_handle'));

final _navigine_sdk_flutter_UserLocationLayer_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_UserLocationLayer_free');


class UserLocationLayer$Impl extends __lib.NativeBase implements UserLocationLayer, Finalizable {
    UserLocationLayer$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_UserLocationLayer_free.cast());

    @override
    void setVisible(bool visible) {
        final _setVisibleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_UserLocationLayer_setVisible__Visible'));
        final _visibleHandle = navigine_sdk_flutter_bool_ToFfi(visible);
        final _handle = this.handle;
        _setVisibleFfi(_handle, _visibleHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_visibleHandle);
    }

    @override
    bool isVisible() {
        final _isVisibleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_UserLocationLayer_isVisible'));
        final _handle = this.handle;
        final __resultHandle = _isVisibleFfi(_handle, );
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    void setAnchor(math.Point<double> anchor) {
        final _setAnchorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_UserLocationLayer_setAnchor__Anchor'));
        final _anchorHandle = navigine_sdk_flutter_math_Point_double_ToFfi(anchor);
        final _handle = this.handle;
        _setAnchorFfi(_handle, _anchorHandle);
        navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(_anchorHandle);
    }

    @override
    void resetAnchor() {
        final _resetAnchorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_UserLocationLayer_resetAnchor'));
        final _handle = this.handle;
        _resetAnchorFfi(_handle, );
    }

    @override
    bool anchorEnabled() {
        final _anchorEnabledFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_UserLocationLayer_anchorEnabled'));
        final _handle = this.handle;
        final __resultHandle = _anchorEnabledFfi(_handle, );
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_UserLocationLayer_ToFfi(UserLocationLayer value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_UserLocationLayer_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

UserLocationLayer navigine_sdk_flutter_UserLocationLayer_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_UserLocationLayer_CopyHandle(handle);
    final result = UserLocationLayer$Impl(_copiedHandle);
    UserLocationLayer$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_UserLocationLayer_ToFfiNullable(UserLocationLayer? value) => 
  value != null ? navigine_sdk_flutter_UserLocationLayer_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_UserLocationLayer_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_UserLocationLayer_ReleaseHandle(handle);

void navigine_sdk_flutter_UserLocationLayer_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_UserLocationLayer_ReleaseHandle(handle);

UserLocationLayer? navigine_sdk_flutter_UserLocationLayer_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_UserLocationLayer_FromFfi(handle) : null;

// End of UserLocationLayer "private" section.
