part of 'log_message.dart';

// LogMessage "private" section, not exported.

final class LogMessageNative extends Struct {
    @Int64()
    external int time;
    @Uint32()
    external int level;
    external NativeString scope;
    external NativeString message;
    external NativeString verboseInfo;
}

final LogMessageNative Function(int, int, NativeString, NativeString, NativeString) _LogMessageNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<LogMessageNative Function(Int64, Uint32, NativeString, NativeString, NativeString)>>('navigine_sdk_flutter_LogMessage_init')
  .asFunction<LogMessageNative Function(int, int, NativeString, NativeString, NativeString)>(isLeaf: true));

extension LogMessageImpl on LogMessage  {
    static LogMessage fromNative(LogMessageNative native, {bool takeOwnership = true})  {
        return LogMessage(
          native.time,
          LogLevelImpl.fromInt(native.level),
          toPlatformString(native.scope, takeOwnership: takeOwnership),
          toPlatformString(native.message, takeOwnership: takeOwnership),
          toPlatformString(native.verboseInfo, takeOwnership: takeOwnership),
        );
    }

    static LogMessageNative toNative(LogMessage obj)  {
        return _LogMessageNativeInit(
          obj.time,
          LogLevelImpl.toInt(obj.level),
          toNativeString(obj.scope),
          toNativeString(obj.message),
          toNativeString(obj.verboseInfo),
        );
    }

    static LogMessage? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = LogMessageImpl.fromNative(ptr.cast<LogMessageNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(LogMessage? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<LogMessageNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of LogMessage "private" section.
