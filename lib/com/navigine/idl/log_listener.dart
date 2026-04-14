import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/log_message.dart';

part 'log_listener.impl.dart';
/**
 * @file com/navigine/idl/log_listener.dart
 * @brief @copybrief LogListener
 */
abstract class LogListener {

    void onMessageRecieved(LogMessage message);



}
