import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'category.impl.dart';
/// class is used for storing venue categories.
/// Referenced from [Location] [Venue].
class Category {
    /// Default constructor.
    Category(this.id, this.name, this.imageUrl);
    /// category identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get category ID
    /// int categoryId = category.getId();
    /// print('Category ID: $categoryId');
    /// ```
    int id;
    /// category name.
    ///
    /// Example:
    /// ```dart
    /// // Get category name
    /// String? categoryName = category.getName();
    /// print('Category name: $categoryName');
    /// ```
    String name;
    /// image source. If presented.
    ///
    /// Example:
    /// ```dart
    /// // Get category image URL
    /// String? imageUrl = category.getImageUrl();
    /// if (imageUrl != null) {
    ///  print('Category image URL: $imageUrl');
    /// }
    /// ```
    String? imageUrl;
}
