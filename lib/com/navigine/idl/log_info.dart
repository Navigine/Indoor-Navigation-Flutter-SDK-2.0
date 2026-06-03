import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'log_info.impl.dart';
/// Represents metadata for a log file.
/// Referenced from [ResourceManager].
class LogInfo {
    /// Default constructor.
    LogInfo(this.name, this.absolutePath, this.size, this.duration, this.date, this.numberOfCheckpoints);
    /// The name of the log file.
    String name;
    /// The absolute file path of the log file.
    String absolutePath;
    /// The size of the log file in bytes.
    int size;
    /// The duration of the logged activity in seconds.
    int duration;
    /// The date the log file was created or last modified, in string format.
    String date;
    /// The number of checkpoints recorded in the log file.
    int numberOfCheckpoints;
}
