part of 'user_location_layer.dart';

// UserLocationLayer "private" section, not exported.

final _navigine_sdk_flutter_UserLocationLayer_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_UserLocationLayer_check'));

final _navigine_sdk_flutter_UserLocationLayer_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_UserLocationLayer_free');


class UserLocationLayer$Impl implements UserLocationLayer, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_UserLocationLayer_free.cast());

    UserLocationLayer$Impl.fromExternalPtr(this.ptr);

    @internal
    UserLocationLayer$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory UserLocationLayer$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_UserLocationLayer_check(ptr);

    static Pointer<Void> getNativePtr(UserLocationLayer? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as UserLocationLayer$Impl).ptr;
    }

    static UserLocationLayer? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return UserLocationLayer$Impl.fromNativePtr(ptr);
    }

    @override
    void setVisible(bool visible) {
        final _setVisibleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_UserLocationLayer_setVisible__Visible'));
        _setVisibleFfi(this.ptr, (visible ? 1 : 0));
        exception.checkCallResult();
    }

    @override
    bool isVisible() {
        final _isVisibleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_UserLocationLayer_isVisible'));
        final __resultHandle = _isVisibleFfi(this.ptr, );
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void setAnchor(math.Point<double> anchor) {
        final _setAnchorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ScreenPointNative),
            void Function(Pointer<Void>, ScreenPointNative)
          >('navigine_sdk_flutter_UserLocationLayer_setAnchor__Anchor'));
        _setAnchorFfi(this.ptr, ScreenPointImpl.toNative(anchor));
        exception.checkCallResult();
    }

    @override
    void resetAnchor() {
        final _resetAnchorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_UserLocationLayer_resetAnchor'));
        _resetAnchorFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    bool anchorEnabled() {
        final _anchorEnabledFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_UserLocationLayer_anchorEnabled'));
        final __resultHandle = _anchorEnabledFfi(this.ptr, );
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }




}

// End of UserLocationLayer "private" section.
