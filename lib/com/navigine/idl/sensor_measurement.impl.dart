part of 'sensor_measurement.dart';

// SensorMeasurement "private" section, not exported.

final class SensorMeasurementNative extends Struct {
    @Uint32()
    external int type;
    external Vector3dNative values;
    @Int64()
    external int time;
}

final SensorMeasurementNative Function(int, Vector3dNative, int) _SensorMeasurementNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<SensorMeasurementNative Function(Uint32, Vector3dNative, Int64)>>('navigine_sdk_flutter_SensorMeasurement_init')
  .asFunction<SensorMeasurementNative Function(int, Vector3dNative, int)>(isLeaf: true));

extension SensorMeasurementImpl on SensorMeasurement  {
    static SensorMeasurement fromNative(SensorMeasurementNative native, {bool takeOwnership = true})  {
        return SensorMeasurement(
          SensorTypeImpl.fromInt(native.type),
          Vector3dImpl.fromNative(native.values, takeOwnership: takeOwnership),
          native.time,
        );
    }

    static SensorMeasurementNative toNative(SensorMeasurement obj)  {
        return _SensorMeasurementNativeInit(
          SensorTypeImpl.toInt(obj.type),
          Vector3dImpl.toNative(obj.values),
          obj.time,
        );
    }

    static SensorMeasurement? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = SensorMeasurementImpl.fromNative(ptr.cast<SensorMeasurementNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(SensorMeasurement? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<SensorMeasurementNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of SensorMeasurement "private" section.
