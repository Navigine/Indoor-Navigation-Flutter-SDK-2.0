import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/zone_listener.dart';

abstract class ZoneManager implements Finalizable {

    void addZoneListener(ZoneListener listener);
    void removeZoneListener(ZoneListener listener);



}

// ZoneManager "private" section, not exported.

final _navigine_sdk_flutter_ZoneManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneManager_copy_handle'));

final _navigine_sdk_flutter_ZoneManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneManager_release_handle'));

final _navigine_sdk_flutter_ZoneManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ZoneManager_free');

final _navigine_sdk_flutter_ZoneManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_ZoneManager_create_proxy'));

final _navigine_sdk_flutter_ZoneManager_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_ZoneManager_set_ports'));


class ZoneManager$Impl extends __lib.NativeBase implements ZoneManager, Finalizable {
    ZoneManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ZoneManager_free.cast());

    @override
    void addZoneListener(ZoneListener listener) {
        final _addZoneListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ZoneManager_addZoneListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_ZoneListener_ToFfi(listener);
        final _handle = this.handle;
        _addZoneListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_ZoneListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeZoneListener(ZoneListener listener) {
        final _removeZoneListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ZoneManager_removeZoneListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_ZoneListener_ToFfi(listener);
        final _handle = this.handle;
        _removeZoneListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_ZoneListener_ReleaseFfiHandle(_listenerHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_ZoneManager_ToFfi(ZoneManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_ZoneManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

ZoneManager navigine_sdk_flutter_ZoneManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_ZoneManager_CopyHandle(handle);
    final result = ZoneManager$Impl(_copiedHandle);
    ZoneManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_ZoneManager_ToFfiNullable(ZoneManager? value) => 
  value != null ? navigine_sdk_flutter_ZoneManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ZoneManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ZoneManager_ReleaseHandle(handle);

void navigine_sdk_flutter_ZoneManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ZoneManager_ReleaseHandle(handle);

ZoneManager? navigine_sdk_flutter_ZoneManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_ZoneManager_FromFfi(handle) : null;

// End of ZoneManager "private" section.
