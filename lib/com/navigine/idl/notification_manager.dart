import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/notification_listener.dart';

part 'notification_manager.impl.dart';
/// Class is used to manage local [Notification]s
/// Notification should be created in CMS. Notification handle iBeacon signals,
/// detect proximity and notify user about event.
/// Referenced from [NavigineSdk].
abstract class NotificationManager implements Finalizable {

    /// Method is used to add [NotificationListener] class element which will notify
    /// all incoming local notification events.
    /// **Note:** Do not forget to remove listener if it is no longer needed!
    /// [listener] Corresponding [NotificationListener] listener class.
    ///
    /// Example:
    /// ```dart
    /// // Add notification listener
    /// _notificationManager!.addNotificationListener(_notificationListener!);
    /// print("Added notification listener");
    /// ```
    void addNotificationListener(NotificationListener listener);

    /// Method is used for removing previously added [NotificationListener] class element.
    /// [listener] Corresponding [NotificationListener] class to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove notification listener
    /// _notificationManager!.removeNotificationListener(_notificationListener!);
    /// print("Removed notification listener");
    /// ```
    void removeNotificationListener(NotificationListener listener);



}
