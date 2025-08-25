import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/notification_listener.dart';

part 'notification_manager.impl.dart';
/**
 * @file com/navigine/idl/notification_manager.dart
 * @brief @copybrief NotificationManager
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 *
 * @brief Class is used to manage local @see Notification "Notification"s
 *
 * Notification should be created in CMS. Notification handle iBeacon signals,
 * detect proximity and notify user about event.
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 *
 */
abstract class NotificationManager implements Finalizable {

    /**
     *
     * @brief Method is used to add @see NotificationListener "NotificationListener" class element which will notify
     * all incoming local notification events.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Сorresponding @see NotificationListener "NotificationListener" listener class.
     *
     *
     *
     * Dart code snippet:
     * @snippet notification_manager_example.dart dart_NotificationManager_addNotificationListener
     *
     */
    void addNotificationListener(NotificationListener listener);

    /**
     *
     * @brief Method is used for removing previously added @see NotificationListener "NotificationListener" class element.
     * @param listener Сorresponding @see NotificationListener "NotificationListener" class to remove.
     *
     *
     *
     * Dart code snippet:
     * @snippet notification_manager_example.dart dart_NotificationManager_removeNotificationListener
     *
     */
    void removeNotificationListener(NotificationListener listener);



}
