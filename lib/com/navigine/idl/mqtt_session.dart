import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/mqtt_session_listener.dart';

part 'mqtt_session.impl.dart';
/**
 * @file com/navigine/idl/mqtt_session.dart
 * @brief @copybrief MqttSession
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 *
 * @brief Class is used for managing MQTT session and publishing position data to MQTT broker.
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 */
abstract class MqttSession implements Finalizable {

    /**
     * @brief Method is used to connect to MQTT broker and start publishing position data.
     * @param server MQTT broker server hostname or IP address.
     * @param port MQTT broker server port.
     * @param username MQTT broker username for authentication.
     * @param password MQTT broker password for authentication.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet mqtt_session_example.dart dart_MqttSession_connect
     *
     */
    void connect(String server, int port, String username, String password);

    /**
     * @brief Method is used to set MQTT sub-topic for publishing position data.
     * The final topic will be "navigine/mobile/positions/" + subTopic + "/" + deviceId.
     * @param subTopic MQTT sub-topic for publishing position data. Must match pattern [0-9a-zA-Z_-]+ and cannot be empty.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet mqtt_session_example.dart dart_MqttSession_setSubTopic
     *
     */
    void setSubTopic(String subTopic);

    /**
     * @brief Method is used to add @see MqttSessionListener "MqttSessionListener" class element
     * which will notify about MQTT session connection state changes.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Corresponding @see MqttSessionListener "MqttSessionListener" class.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet mqtt_session_example.dart dart_MqttSession_addListener
     *
     */
    void addListener(MqttSessionListener listener);

    /**
     * @brief Method is used for removing previously added @see MqttSessionListener "MqttSessionListener" class element.
     * @param listener Corresponding @see MqttSessionListener "MqttSessionListener" class to remove.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet mqtt_session_example.dart dart_MqttSession_removeListener
     *
     */
    void removeListener(MqttSessionListener listener);

    /**
     * @brief Method is used to disconnect from MQTT broker and stop publishing position data.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet mqtt_session_example.dart dart_MqttSession_disconnect
     *
     */
    void disconnect();

    /**
     * @brief Method is used to publish a custom message to a specified MQTT topic.
     * The message will be sent asynchronously and the result will be notified through
     * @see MqttSessionListener "MqttSessionListener" callbacks (onMessagePublished for success, onError for failure).
     * @note The MQTT session must be connected before calling this method. Use @see MqttSession::connect "connect" method first.
     * @param topic MQTT topic to publish the message to. Can be any valid MQTT topic string.
     * @param message Message content to publish. Can be any string (JSON, plain text, etc.).
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet mqtt_session_example.dart dart_MqttSession_publish
     *
     */
    void publish(String topic, String message);



}
