import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'notification.impl.dart';
/// Class is used for working with the notifications and storing its data.
/// Referenced from: [NotificationListener].
abstract class Notification implements Finalizable {


    /// notification's unique identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get notification ID
    /// int id = notification.id;
    /// print("Notification ID: $id");
    /// ```
    int get id;
    /// notification's title.
    ///
    /// Example:
    /// ```dart
    /// // Get notification title
    /// String title = notification.title;
    /// print("Notification title: $title");
    /// ```
    String get title;
    /// notification's content.
    ///
    /// Example:
    /// ```dart
    /// // Get notification content
    /// String content = notification.content;
    /// print("Notification content: $content");
    /// ```
    String get content;
    /// notification's image url if specified.
    ///
    /// Example:
    /// ```dart
    /// // Get notification image URL
    /// String? imageUrl = notification.imageUrl;
    /// if (imageUrl != null) {
    ///  print("Notification image URL: $imageUrl");
    /// } else {
    ///  print("Notification has no image URL");
    /// }
    /// ```
    String? get imageUrl;


}
