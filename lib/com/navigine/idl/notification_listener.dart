import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/notification.dart';
import 'package:navigine_sdk/error.dart';

part 'notification_listener.impl.dart';
/// Class provides a callback to be invoked when [NotificationManager]
/// detects local notification events.
/// Referenced from [NotificationManager].
/// **Note:** The callback is invoked in the UI thread.
abstract class NotificationListener {

    /// Called when iBeacon signal mathed all parameters in notification
    /// [notification] notification instance created in CMS [Notification].
    ///
    /// Example:
    /// ```dart
    /// onNotificationLoaded: (Notification notification) {
    ///  print("Notification loaded");
    ///  _demonstrateNotificationUsage(notification);
    /// },
    /// ```
    void onNotificationLoaded(Notification notification);

    /// Called if unable to calculate notification or network errors.
    /// [error] handled error.
    ///
    /// Example:
    /// ```dart
    /// onNotificationFailed: (Error error) {
    ///  print("Notification failed: ${error.message}");
    ///  _demonstrateErrorHandling(error);
    /// },
    /// ```
    void onNotificationFailed(Error error);



}
