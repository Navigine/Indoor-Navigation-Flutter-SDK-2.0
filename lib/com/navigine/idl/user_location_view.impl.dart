part of 'user_location_view.dart';

// UserLocationView "private" section, not exported.

final _navigine_sdk_flutter_UserLocationView_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_UserLocationView_copy_handle'));

final _navigine_sdk_flutter_UserLocationView_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_UserLocationView_release_handle'));

final _navigine_sdk_flutter_UserLocationView_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_UserLocationView_free');


class UserLocationView$Impl extends __lib.NativeBase implements UserLocationView, Finalizable {
    UserLocationView$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_UserLocationView_free.cast());


    IconMapObject get arrow {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_UserLocationView_arrow_get'));

        final _handle = this.handle;
        final _arrowHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_IconMapObject_FromFfi(_arrowHandle);
        navigine_sdk_flutter_IconMapObject_ReleaseFfiHandle(_arrowHandle);
        return _result;
    }


    CircleMapObject get accuracyCircle {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_UserLocationView_accuracyCircle_get'));

        final _handle = this.handle;
        final _accuracyCircleHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_CircleMapObject_FromFfi(_accuracyCircleHandle);
        navigine_sdk_flutter_CircleMapObject_ReleaseFfiHandle(_accuracyCircleHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_UserLocationView_ToFfi(UserLocationView value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_UserLocationView_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

UserLocationView navigine_sdk_flutter_UserLocationView_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_UserLocationView_CopyHandle(handle);
    final result = UserLocationView$Impl(_copiedHandle);
    UserLocationView$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_UserLocationView_ToFfiNullable(UserLocationView? value) => 
  value != null ? navigine_sdk_flutter_UserLocationView_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_UserLocationView_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_UserLocationView_ReleaseHandle(handle);

void navigine_sdk_flutter_UserLocationView_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_UserLocationView_ReleaseHandle(handle);

UserLocationView? navigine_sdk_flutter_UserLocationView_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_UserLocationView_FromFfi(handle) : null;

// End of UserLocationView "private" section.
