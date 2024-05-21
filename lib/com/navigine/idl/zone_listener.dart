import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/zone.dart';

abstract class ZoneListener {

    void onEnterZone(Zone zone);
    void onLeaveZone(Zone zone);



}

// ZoneListener "private" section, not exported.

final _navigine_sdk_flutter_ZoneListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneListener_release_handle'));

final _navigine_sdk_flutter_ZoneListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_ZoneListener_create_proxy'));
Pointer<Void> navigine_sdk_flutter_ZoneListener_ToFfi(ZoneListener value) {
    return Pointer<Void>.fromAddress(0);
}

Pointer<Void> navigine_sdk_flutter_ZoneListener_ToFfiNullable(ZoneListener? value) => 
  value != null ? navigine_sdk_flutter_ZoneListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ZoneListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ZoneListener_ReleaseHandle(handle);

void navigine_sdk_flutter_ZoneListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ZoneListener_ReleaseHandle(handle);

// End of ZoneListener "private" section.
