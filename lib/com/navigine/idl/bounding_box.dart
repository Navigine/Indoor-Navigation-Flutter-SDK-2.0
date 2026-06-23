import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'bounding_box.impl.dart';
/// Axis-aligned bounding box defined by two corner points.
///
/// Example:
/// ```dart
/// BoundingBox boundingBox = BoundingBox(bottomLeft, topRight);
/// print("Created bounding box: bottomLeft(${boundingBox.bottomLeft.x}, ${boundingBox.bottomLeft.y}), topRight(${boundingBox.topRight.x}, ${boundingBox.topRight.y})");
/// ```
class BoundingBox {
    /// Default constructor.
    BoundingBox(this.bottomLeft, this.topRight);
    /// Lower-left corner of the bounding box.
    ///
    /// Example:
    /// ```dart
    /// Point leftCorner = boundingBox.bottomLeft;
    /// print("Bottom-left corner: (${leftCorner.x}, ${leftCorner.y})");
    /// ```
    Point bottomLeft;
    /// Upper-right corner of the bounding box.
    ///
    /// Example:
    /// ```dart
    /// Point rightCorner = boundingBox.topRight;
    /// print("Top-right corner: (${rightCorner.x}, ${rightCorner.y})");
    /// ```
    Point topRight;
}
