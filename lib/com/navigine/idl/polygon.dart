import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'polygon.impl.dart';
/// A polygon with specified list of points.
///
/// Example:
/// ```dart
/// // Create polygon
/// Polygon polygon = Polygon(polygonPoints);
/// print("Created polygon with ${polygon.points.length} points");
/// ```
class Polygon {
    /// Default constructor.
    Polygon(this.points);
    /// Ring specifying the area.
    ///
    /// Example:
    /// ```dart
    /// // Get polygon points
    /// List<Point> points = polygon.points;
    /// print("Polygon points: ${points.map((p) => "(${p.x}, ${p.y})").join(", ")}");
    /// ```
    List<Point> points;
}
