import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/error.dart';

part 'mqtt_session_listener.impl.dart';
/// Class provides callbacks to be invoked when MQTT session connection state changes.
/// Referenced from [MqttSession].
/// **Note:** The callbacks are invoked in the UI thread.
abstract class MqttSessionListener {

    /// Called when MQTT session has been successfully connected to the server.
    ///
    /// Example:
    /// ```dart
    /// onConnected: () {
    ///  print("MQTT session connected successfully");
    /// },
    /// ```
    void onConnected();

    /// Called if MQTT session connection failed or was lost.
    /// [error] handled error.
    ///
    /// Example:
    /// ```dart
    /// onError: (Error error) {
    ///  print("MQTT session error: ${error.message}");
    /// },
    /// ```
    void onError(Error error);

    /// Called when a message has been successfully published to MQTT broker.
    /// This callback is invoked after a message (either position data or custom message)
    /// has been successfully sent to the MQTT broker.
    ///
    /// Example:
    /// ```dart
    /// onMessagePublished: () {
    ///  print("Message published successfully");
    /// },
    /// ```
    void onMessagePublished();



}
