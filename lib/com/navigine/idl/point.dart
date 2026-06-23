import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'point.impl.dart';
/// A point at the specified metrics coordinates.
///
/// Example:
/// ```dart
/// // Create points with x, y coordinates
/// Point point1 = Point(10.0, 20.0);
/// Point point2 = Point(30.0, 40.0);
/// Point point3 = Point(50.0, 60.0);
/// print("Created points: P1(${point1.x}, ${point1.y}), P2(${point2.x}, ${point2.y}), P3(${point3.x}, ${point3.y})");
/// ```
class Point {
    /// Default constructor.
    Point(this.x, this.y);
    /// point's `x` coordinate in meters.
    ///
    /// Example:
    /// ```dart
    /// // Get X coordinate
    /// double x1 = point1.x;
    /// print("Point1 X coordinate: $x1");
    /// ```
    double x;
    /// point's `y` coordinate in meters.
    ///
    /// Example:
    /// ```dart
    /// // Get Y coordinate
    /// double y1 = point1.y;
    /// print("Point1 Y coordinate: $y1");
    /// ```
    double y;
}
