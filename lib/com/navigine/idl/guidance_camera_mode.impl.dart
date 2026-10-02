part of 'guidance_camera_mode.dart';

// GuidanceCameraMode "private" section, not exported.

extension GuidanceCameraModeImpl on GuidanceCameraMode  {
    static int toInt(GuidanceCameraMode e) => e.index;

    static GuidanceCameraMode fromInt(int val)  {
        if (val < 0 || val >= GuidanceCameraMode.values.length) {
          throw StateError('Invalid numeric value $val for GuidanceCameraMode enum.');
        }
        return GuidanceCameraMode.values[val];
    }

    static GuidanceCameraMode? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(GuidanceCameraMode? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of GuidanceCameraMode "private" section.
