import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'log_info.impl.dart';
/**
 * @file com/navigine/idl/log_info.dart
 * @brief @copybrief LogInfo
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Represents metadata for a log file.
 *
 * Referenced from @see ResourceManager "ResourceManager".
 *
 */
class LogInfo {
    /// @brief Default constructor
    LogInfo(this.name, this.absolutePath, this.size, this.duration, this.date, this.numberOfCheckpoints);
    /**
     * @brief The name of the log file.
     */
    String name;
    /**
     * @brief The absolute file path of the log file.
     */
    String absolutePath;
    /**
     * @brief The size of the log file in bytes.
     */
    int size;
    /**
     * @brief The duration of the logged activity in seconds.
     */
    int duration;
    /**
     * @brief The date the log file was created or last modified, in string format.
     */
    String date;
    /**
     * @brief The number of checkpoints recorded in the log file.
     */
    int numberOfCheckpoints;
}
