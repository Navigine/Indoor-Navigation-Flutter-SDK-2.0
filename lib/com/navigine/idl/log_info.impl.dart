part of 'log_info.dart';

// LogInfo "private" section, not exported.

final class LogInfoNative extends Struct {
    external NativeString name;
    external NativeString absolutePath;
    @Int32()
    external int size;
    @Int32()
    external int duration;
    external NativeString date;
    @Int32()
    external int numberOfCheckpoints;
}

final LogInfoNative Function(NativeString, NativeString, int, int, NativeString, int) _LogInfoNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<LogInfoNative Function(NativeString, NativeString, Int32, Int32, NativeString, Int32)>>('navigine_sdk_flutter_LogInfo_init')
  .asFunction<LogInfoNative Function(NativeString, NativeString, int, int, NativeString, int)>(isLeaf: true));

extension LogInfoImpl on LogInfo  {
    static LogInfo fromNative(LogInfoNative native, {bool takeOwnership = true})  {
        return LogInfo(
          toPlatformString(native.name, takeOwnership: takeOwnership),
          toPlatformString(native.absolutePath, takeOwnership: takeOwnership),
          native.size,
          native.duration,
          toPlatformString(native.date, takeOwnership: takeOwnership),
          native.numberOfCheckpoints,
        );
    }

    static LogInfoNative toNative(LogInfo obj)  {
        return _LogInfoNativeInit(
          toNativeString(obj.name),
          toNativeString(obj.absolutePath),
          obj.size,
          obj.duration,
          toNativeString(obj.date),
          obj.numberOfCheckpoints,
        );
    }

    static LogInfo? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = LogInfoImpl.fromNative(ptr.cast<LogInfoNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(LogInfo? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<LogInfoNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of LogInfo "private" section.
