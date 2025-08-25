import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'notification.impl.dart';
/**
 * @file com/navigine/idl/notification.dart
 * @brief @copybrief Notification
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Class is used for working with the notifications and storing its data.
 *
 * Referenced from: @see NotificationListener "NotificationListener".
 *
 */
abstract class Notification implements Finalizable {


    /**
     * @brief notification's unique identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet notification_manager_example.dart dart_Notification_getId
     *
     */
    int get id;
    /**
     * @brief notification's title.
     *
     *
     *
     * Dart code snippet:
     * @snippet notification_manager_example.dart dart_Notification_getTitle
     *
     */
    String get title;
    /**
     * @brief notification's content.
     *
     *
     *
     * Dart code snippet:
     * @snippet notification_manager_example.dart dart_Notification_getContent
     *
     */
    String get content;
    /**
     * @brief notification's image url if specified.
     *
     *
     *
     * Dart code snippet:
     * @snippet notification_manager_example.dart dart_Notification_getImageUrl
     *
     */
    String? get imageUrl;


}
