import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/notification.dart';
import 'package:navigine_sdk/error.dart';

part 'notification_listener.impl.dart';
/**
 * @file com/navigine/idl/notification_listener.dart
 * @brief @copybrief NotificationListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_listeners
 * @brief Class provides a callback to be invoked when @see NotificationManager "NotificationManager"
 * detects local notification events.
 *
 * Referenced from @see NotificationManager "NotificationManager".
 * @note The callback is invoked in the UI thread.
 */
abstract class NotificationListener {

    /**
     *
     * @brief Called when iBeacon signal mathed all parameters in notification
     * @param notification notification instance created in CMS @see Notification "Notification".
     *
     */
    void onNotificationLoaded(Notification notification);

    /**
     *
     * @brief Called if unable to calculate notification or network errors.
     * @param error handled error.
     *
     */
    void onNotificationFailed(Error error);



}
