import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'rectangle.impl.dart';
/// A rectangle with specified origin and size.
///
/// Example:
/// ```dart
/// // Create rectangle with x, y, width, height
/// Rectangle rect1 = Rectangle(10, 20, 100, 150);
/// print(
///  "Created rectangle: x=${rect1.x}, y=${rect1.y}, width=${rect1.width}, height=${rect1.height}",
/// );
/// ```
class Rectangle {
    /// Default constructor.
    Rectangle(this.x, this.y, this.width, this.height);
    /// rectangle's origin `x` coordinate.
    int x;
    /// rectangle's origin `y` coordinate.
    int y;
    /// rectangle's width.
    int width;
    /// rectangle's height.
    int height;
}
