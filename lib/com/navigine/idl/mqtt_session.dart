import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/mqtt_session_listener.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'mqtt_session.impl.dart';
/// Class is used for managing MQTT session and publishing position data to MQTT broker.
/// Referenced from [NavigineSdk].
abstract class MqttSession implements Finalizable {

    /// Method is used to connect to MQTT broker and start publishing position data.
    /// [server] MQTT broker server hostname or IP address.
    /// [port] MQTT broker server port.
    /// [username] MQTT broker username for authentication.
    /// [password] MQTT broker password for authentication.
    ///
    /// Example:
    /// ```dart
    /// // Connect to MQTT broker
    /// // Server: MQTT broker hostname or IP address
    /// // Port: MQTT broker port (typically 1883 for non-SSL, 8883 for SSL)
    /// // Username: MQTT broker username for authentication
    /// // Password: MQTT broker password for authentication
    /// _mqttSession!.connect("mqtt.example.com", 1883, "username", "password");
    /// ```
    void connect(String server, int port, String username, String password);

    /// Method is used to set MQTT sub-topic for publishing position data.
    /// The final topic will be "navigine/mobile/positions/" + subTopic + "/" + deviceId.
    /// [subTopic] MQTT sub-topic for publishing position data. Must match pattern [0-9a-zA-Z_-]+ and cannot be empty.
    ///
    /// Example:
    /// ```dart
    /// // Set MQTT sub-topic for publishing position data
    /// // Final topic will be "navigine/mobile/positions/" + subTopic + "/" + deviceId
    /// _mqttSession!.setSubTopic("location1");
    /// ```
    void setSubTopic(String subTopic);

    /// Method is used to add [MqttSessionListener] class element
    /// which will notify about MQTT session connection state changes.
    /// **Note:** Do not forget to remove listener if it is no longer needed!
    /// [listener] Corresponding [MqttSessionListener] class.
    ///
    /// Example:
    /// ```dart
    /// // Add MQTT session listener
    /// _mqttSession!.addListener(_mqttSessionListener!);
    /// ```
    void addListener(MqttSessionListener listener);

    /// Method is used for removing previously added [MqttSessionListener] class element.
    /// [listener] Corresponding [MqttSessionListener] class to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove first listener
    /// _mqttSession!.removeListener(listener1);
    /// ```
    void removeListener(MqttSessionListener listener);

    /// Method is used to disconnect from MQTT broker and stop publishing position data.
    ///
    /// Example:
    /// ```dart
    /// // Disconnect from MQTT broker
    /// _mqttSession!.disconnect();
    /// ```
    void disconnect();

    /// Method is used to publish a custom message to a specified MQTT topic.
    /// The message will be sent asynchronously and the result will be notified through
    /// **Note:** The MQTT session must be connected before calling this method. Use [connect] method first.
    /// [MqttSessionListener] callbacks (onMessagePublished for success, onError for failure).
    /// [topic] MQTT topic to publish the message to. Can be any valid MQTT topic string.
    /// [message] Message content to publish. Can be any string (JSON, plain text, etc.).
    ///
    /// Example:
    /// ```dart
    /// // Publish a custom message to a specific MQTT topic
    /// // The message will be sent asynchronously and the result will be notified through listener callbacks
    /// String customTopic = "custom/device/status";
    /// String customMessage = '{"status": "online", "timestamp": ${DateTime.now().millisecondsSinceEpoch}}';
    /// _mqttSession!.publish(customTopic, customMessage);
    /// ```
    void publish(String topic, String message);



}
