import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/log_level.dart';

part 'log_message.impl.dart';
class LogMessage {
    /// Default constructor.
    LogMessage(this.time, this.level, this.scope, this.message, this.verboseInfo);
    int time;
    LogLevel level;
    String scope;
    String message;
    String verboseInfo;
}
