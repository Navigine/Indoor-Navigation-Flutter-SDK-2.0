import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_measurement.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_type.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class MapSensorType_SensorMeasurementImpl {
  MapSensorType_SensorMeasurementImpl._();

  static Map<SensorType, SensorMeasurement> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformIntMap(handle, (nativeValue) => SensorMeasurementImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!, keyFromInt: SensorTypeImpl.fromInt, keyToInt: SensorTypeImpl.toInt);

  static Map<SensorType, SensorMeasurement>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformIntMapNullable(handle, (nativeValue) => SensorMeasurementImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!, keyFromInt: SensorTypeImpl.fromInt, keyToInt: SensorTypeImpl.toInt);

  static Pointer<Void> getNativePtr(Map<SensorType, SensorMeasurement>? value) =>
    toNativeIntMapNullable(value, SensorTypeImpl.toInt, (value) => SensorMeasurementImpl.toPointer(value));
}
