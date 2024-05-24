import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/position_listener.dart';

abstract class NavigationManager implements Finalizable {

    void addPositionListener(PositionListener listener);
    void removePositionListener(PositionListener listener);
    void startLogRecording();
    void addCheckPoint(LocationPoint point);
    void stopLogRecording();
    void addLocationMeasurement(GlobalPoint point, double accuracy, String provider);



}

// NavigationManager "private" section, not exported.

final _navigine_sdk_flutter_NavigationManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_NavigationManager_copy_handle'));

final _navigine_sdk_flutter_NavigationManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_NavigationManager_release_handle'));

final _navigine_sdk_flutter_NavigationManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_NavigationManager_free');

final _navigine_sdk_flutter_NavigationManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_NavigationManager_create_proxy'));

final _navigine_sdk_flutter_NavigationManager_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_NavigationManager_set_ports'));


class NavigationManager$Impl extends __lib.NativeBase implements NavigationManager, Finalizable {
    NavigationManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_NavigationManager_free.cast());

    @override
    void addPositionListener(PositionListener listener) {
        final _addPositionListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigationManager_addPositionListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_PositionListener_ToFfi(listener);
        final _handle = this.handle;
        _addPositionListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_PositionListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removePositionListener(PositionListener listener) {
        final _removePositionListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigationManager_removePositionListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_PositionListener_ToFfi(listener);
        final _handle = this.handle;
        _removePositionListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_PositionListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void startLogRecording() {
        final _startLogRecordingFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_NavigationManager_startLogRecording'));
        final _handle = this.handle;
        _startLogRecordingFfi(_handle, );
    }

    @override
    void addCheckPoint(LocationPoint point) {
        final _addCheckPointFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigationManager_addCheckPoint__Point'));
        final _pointHandle = navigine_sdk_flutter_LocationPoint_ToFfi(point);
        final _handle = this.handle;
        _addCheckPointFfi(_handle, _pointHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
    }

    @override
    void stopLogRecording() {
        final _stopLogRecordingFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_NavigationManager_stopLogRecording'));
        final _handle = this.handle;
        _stopLogRecordingFfi(_handle, );
    }

    @override
    void addLocationMeasurement(GlobalPoint point, double accuracy, String provider) {
        final _addLocationMeasurementFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Double, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>, double, Pointer<Void>)
          >('navigine_sdk_flutter_NavigationManager_addLocationMeasurement__Point_Accuracy_Provider'));
        final _pointHandle = navigine_sdk_flutter_GlobalPoint_ToFfi(point);
        final _accuracyHandle = navigine_sdk_flutter_double_ToFfi(accuracy);
        final _providerHandle = navigine_sdk_flutter_String_ToFfi(provider);
        final _handle = this.handle;
        _addLocationMeasurementFfi(_handle, _pointHandle, _accuracyHandle, _providerHandle);
        navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(_pointHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_accuracyHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_providerHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_NavigationManager_ToFfi(NavigationManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_NavigationManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

NavigationManager navigine_sdk_flutter_NavigationManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_NavigationManager_CopyHandle(handle);
    final result = NavigationManager$Impl(_copiedHandle);
    NavigationManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_NavigationManager_ToFfiNullable(NavigationManager? value) => 
  value != null ? navigine_sdk_flutter_NavigationManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_NavigationManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_NavigationManager_ReleaseHandle(handle);

void navigine_sdk_flutter_NavigationManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_NavigationManager_ReleaseHandle(handle);

NavigationManager? navigine_sdk_flutter_NavigationManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_NavigationManager_FromFfi(handle) : null;

// End of NavigationManager "private" section.
