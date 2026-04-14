import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/error.dart';

part 'mqtt_session_listener.impl.dart';
/**
 * @file com/navigine/idl/mqtt_session_listener.dart
 * @brief @copybrief MqttSessionListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_listeners
 *
 * @brief Class provides callbacks to be invoked when MQTT session connection state changes.
 *
 * Referenced from @see MqttSession "MqttSession".
 * @note The callbacks are invoked in the UI thread.
 */
abstract class MqttSessionListener {

    /**
     * @brief Called when MQTT session has been successfully connected to the server.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet mqtt_session_example.dart dart_MqttSessionListener_onConnected
     *
     */
    void onConnected();

    /**
     * @brief Called if MQTT session connection failed or was lost.
     * @param error handled error.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet mqtt_session_example.dart dart_MqttSessionListener_onError
     *
     */
    void onError(Error error);

    /**
     * @brief Called when a message has been successfully published to MQTT broker.
     * This callback is invoked after a message (either position data or custom message)
     * has been successfully sent to the MQTT broker.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet mqtt_session_example.dart dart_MqttSessionListener_onMessagePublished
     *
     */
    void onMessagePublished();



}
