part of 'camera_update_reason.dart';

// CameraUpdateReason "private" section, not exported.

extension CameraUpdateReasonImpl on CameraUpdateReason  {
    static int toInt(CameraUpdateReason e) => e.index;

    static CameraUpdateReason fromInt(int val)  {
        if (val < 0 || val >= CameraUpdateReason.values.length) {
          throw StateError('Invalid numeric value $val for CameraUpdateReason enum.');
        }
        return CameraUpdateReason.values[val];
    }

    static CameraUpdateReason? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(CameraUpdateReason? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of CameraUpdateReason "private" section.
