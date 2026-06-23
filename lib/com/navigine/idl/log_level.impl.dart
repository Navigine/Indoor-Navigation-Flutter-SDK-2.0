part of 'log_level.dart';

// LogLevel "private" section, not exported.

extension LogLevelImpl on LogLevel  {
    static int toInt(LogLevel e) => e.index;

    static LogLevel fromInt(int val)  {
        if (val < 0 || val >= LogLevel.values.length) {
          throw StateError('Invalid numeric value $val for LogLevel enum.');
        }
        return LogLevel.values[val];
    }

    static LogLevel? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(LogLevel? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of LogLevel "private" section.
