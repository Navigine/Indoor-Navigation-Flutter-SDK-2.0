import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/log_listener.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'logger.impl.dart';
abstract class Logger implements Finalizable {

    static Logger getLogger() => $prototype.getLogger();

    void subscribe(LogListener listener);

    void unsubscribe(LogListener listener);

    bool isValid();



    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = Logger$Impl.fromExternalPtr(Pointer<Void>.fromAddress(0));
}
