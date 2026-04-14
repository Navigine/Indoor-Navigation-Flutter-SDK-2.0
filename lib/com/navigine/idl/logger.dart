import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/log_listener.dart';

part 'logger.impl.dart';
/**
 * @file com/navigine/idl/logger.dart
 * @brief @copybrief Logger
 */
abstract class Logger implements Finalizable {

    static Logger getLogger() => $prototype.getLogger();

    void subscribe(LogListener listener);

    void unsubscribe(LogListener listener);



    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = Logger$Impl(Pointer<Void>.fromAddress(0));
}
