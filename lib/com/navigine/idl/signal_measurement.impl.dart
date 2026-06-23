part of 'signal_measurement.dart';

// SignalMeasurement "private" section, not exported.

final class SignalMeasurementNative extends Struct {
    @Uint32()
    external int type;
    external NativeString id;
    @Float()
    external double rssi;
    @Float()
    external double distance;
    @Int64()
    external int time;
}

final SignalMeasurementNative Function(int, NativeString, double, double, int) _SignalMeasurementNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<SignalMeasurementNative Function(Uint32, NativeString, Float, Float, Int64)>>('navigine_sdk_flutter_SignalMeasurement_init')
  .asFunction<SignalMeasurementNative Function(int, NativeString, double, double, int)>(isLeaf: true));

extension SignalMeasurementImpl on SignalMeasurement  {
    static SignalMeasurement fromNative(SignalMeasurementNative native, {bool takeOwnership = true})  {
        return SignalMeasurement(
          SignalTypeImpl.fromInt(native.type),
          toPlatformString(native.id, takeOwnership: takeOwnership),
          native.rssi,
          native.distance,
          native.time,
        );
    }

    static SignalMeasurementNative toNative(SignalMeasurement obj)  {
        return _SignalMeasurementNativeInit(
          SignalTypeImpl.toInt(obj.type),
          toNativeString(obj.id),
          obj.rssi,
          obj.distance,
          obj.time,
        );
    }

    static SignalMeasurement? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = SignalMeasurementImpl.fromNative(ptr.cast<SignalMeasurementNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(SignalMeasurement? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<SignalMeasurementNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of SignalMeasurement "private" section.
