part of 'user_location_follow_mode.dart';

// UserLocationFollowMode "private" section, not exported.

extension UserLocationFollowModeImpl on UserLocationFollowMode  {
    static int toInt(UserLocationFollowMode e) => e.index;

    static UserLocationFollowMode fromInt(int val)  {
        if (val < 0 || val >= UserLocationFollowMode.values.length) {
          throw StateError('Invalid numeric value $val for UserLocationFollowMode enum.');
        }
        return UserLocationFollowMode.values[val];
    }

    static UserLocationFollowMode? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(UserLocationFollowMode? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of UserLocationFollowMode "private" section.
