part of 'guidance_camera.dart';

// GuidanceCamera "private" section, not exported.

final _navigine_sdk_flutter_GuidanceCamera_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_GuidanceCamera_check'));

final _navigine_sdk_flutter_GuidanceCamera_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_GuidanceCamera_free');


class GuidanceCamera$Impl implements GuidanceCamera, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_GuidanceCamera_free.cast());

    GuidanceCamera$Impl.fromExternalPtr(this.ptr);

    @internal
    GuidanceCamera$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory GuidanceCamera$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_GuidanceCamera_check(ptr);

    static Pointer<Void> getNativePtr(GuidanceCamera? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as GuidanceCamera$Impl).ptr;
    }

    static GuidanceCamera? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return GuidanceCamera$Impl.fromNativePtr(ptr);
    }

    @override
    void setMode(GuidanceCameraMode mode) {
        final _setModeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_GuidanceCamera_setMode__Mode'));
        _setModeFfi(this.ptr, GuidanceCameraModeImpl.toInt(mode));
        exception.checkCallResult();
    }

    @override
    GuidanceCameraMode mode() {
        final _modeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_GuidanceCamera_mode'));
        final __resultHandle = _modeFfi(this.ptr, );
        final _result = GuidanceCameraModeImpl.fromInt(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void set2DMode(bool enabled) {
        final _set2DModeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_GuidanceCamera_set2DMode__Enabled'));
        _set2DModeFfi(this.ptr, (enabled ? 1 : 0));
        exception.checkCallResult();
    }

    @override
    bool is2DMode() {
        final _is2DModeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_GuidanceCamera_is2DMode'));
        final __resultHandle = _is2DModeFfi(this.ptr, );
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void setActive(bool active) {
        final _setActiveFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_GuidanceCamera_setActive__Active'));
        _setActiveFfi(this.ptr, (active ? 1 : 0));
        exception.checkCallResult();
    }

    @override
    bool isActive() {
        final _isActiveFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_GuidanceCamera_isActive'));
        final __resultHandle = _isActiveFfi(this.ptr, );
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    RouteInstruction? instruction() {
        final _instructionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_GuidanceCamera_instruction'));
        final __resultHandle = _instructionFfi(this.ptr, );
        final _result = RouteInstructionImpl.fromPointer(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void addListener(GuidanceListener listener) {
        final _addListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_GuidanceCamera_addListener__Listener'));
        _addListenerFfi(this.ptr, GuidanceListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeListener(GuidanceListener listener) {
        final _removeListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_GuidanceCamera_removeListener__Listener'));
        _removeListenerFfi(this.ptr, GuidanceListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }




}

// End of GuidanceCamera "private" section.
