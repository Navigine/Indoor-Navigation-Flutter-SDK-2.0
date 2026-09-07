import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/signal_measurement.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class MapString_SignalMeasurementImpl {
  MapString_SignalMeasurementImpl._();

  static Map<String, SignalMeasurement> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformStringMap(handle, (nativeValue) => SignalMeasurementImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!);

  static Map<String, SignalMeasurement>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformStringMapNullable(handle, (nativeValue) => SignalMeasurementImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(Map<String, SignalMeasurement>? value) =>
    toNativeStringMapNullable(value, (value) => SignalMeasurementImpl.toPointer(value));
}
