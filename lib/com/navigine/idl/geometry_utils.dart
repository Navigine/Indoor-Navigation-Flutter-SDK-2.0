import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon.dart';
import 'package:navigine_sdk/com/navigine/idl/segment.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'geometry_utils.impl.dart';
/// A set of functions for working with geometries.
abstract class GeometryUtils implements Finalizable {

    /// Get distance between GPS points
    /// [from] start point of calculation [GlobalPoint]
    /// [to] end point of calculation [GlobalPoint]
    /// Returns distance in meters
    ///
    /// Example:
    /// ```dart
    /// // Calculate distance between global points
    /// double globalDistance = GeometryUtils.distanceBetweenGlobalPoints(globalPoint1, globalPoint2);
    /// print("Distance between Moscow and St. Petersburg: ${globalDistance.toStringAsFixed(2)} meters");
    /// ```
    static double distanceBetweenGlobalPoints(GlobalPoint from, GlobalPoint to) => $prototype.distanceBetweenGlobalPoints(from, to);

    /// Get distance between points
    /// [from] start point of calculation [Point]
    /// [to] end point of calculation [Point]
    /// Returns distance in meters
    ///
    /// Example:
    /// ```dart
    /// // Calculate distance between points
    /// double distance = GeometryUtils.distanceBetweenPoints(point1, point2);
    /// print("Distance between P1 and P2: ${distance.toStringAsFixed(2)} meters");
    /// ```
    static double distanceBetweenPoints(Point from, Point to) => $prototype.distanceBetweenPoints(from, to);

    /// Get length of segment
    /// [segment] segment object for calculation [Segment]
    /// Returns length in meters
    ///
    /// Example:
    /// ```dart
    /// // Calculate segment length
    /// double length1 = GeometryUtils.segmentLength(segment1);
    /// double length2 = GeometryUtils.segmentLength(segment2);
    /// print("Segment1 length: ${length1.toStringAsFixed(2)} meters");
    /// print("Segment2 length: ${length2.toStringAsFixed(2)} meters");
    /// ```
    static double segmentLength(Segment segment) => $prototype.segmentLength(segment);

    /// Get polygon area
    /// [polygon] polygon object for calculation [Polygon]
    /// Returns area in meters
    ///
    /// Example:
    /// ```dart
    /// // Calculate polygon area
    /// double area = GeometryUtils.polygonArea(polygon);
    /// print("Polygon area: ${area.toStringAsFixed(2)} square meters");
    /// ```
    static double polygonArea(Polygon polygon) => $prototype.polygonArea(polygon);

    /// Get polygon geometric center
    /// [polygon] polygon object for calculation [Polygon]
    /// Returns center point [Point]
    ///
    /// Example:
    /// ```dart
    /// // Calculate polygon center
    /// Point center = GeometryUtils.polygonCenter(polygon);
    /// print("Polygon center: (${center.x.toStringAsFixed(2)}, ${center.y.toStringAsFixed(2)})");
    /// ```
    static Point polygonCenter(Polygon polygon) => $prototype.polygonCenter(polygon);

    /// Checks that polygon contains point
    /// [polygon] polygon object in which looking for contents [Polygon]
    /// [point] checking point object [Point]
    /// Returns contains or not
    ///
    /// Example:
    /// ```dart
    /// // Check if polygon contains point
    /// Point insidePoint = Point(5.0, 5.0);
    /// Point outsidePoint = Point(15.0, 15.0);
    /// bool containsInside = GeometryUtils.polygonContainsPoint(polygon, insidePoint);
    /// bool containsOutside = GeometryUtils.polygonContainsPoint(polygon, outsidePoint);
    /// print("Polygon contains inside point: $containsInside");
    /// print("Polygon contains outside point: $containsOutside");
    /// ```
    static bool polygonContainsPoint(Polygon polygon, Point point) => $prototype.polygonContainsPoint(polygon, point);

    /// Get distance from segment to point
    /// [segment] start segment of calculation [Segment]
    /// [point] end point of calculation [Point]
    /// Returns distance in meters
    ///
    /// Example:
    /// ```dart
    /// // Calculate distance from segment to point
    /// double distanceToPoint = GeometryUtils.segmentPointDistance(segment1, testPoint);
    /// print("Distance from segment1 to test point: ${distanceToPoint.toStringAsFixed(2)} meters");
    /// ```
    static double segmentPointDistance(Segment segment, Point point) => $prototype.segmentPointDistance(segment, point);

    /// Checks the intersection of two segments
    /// [segment1] first segment of calculation [Segment]
    /// [segment2] second segment of calculation [Segment]
    /// Returns intersects or not
    ///
    /// Example:
    /// ```dart
    /// // Check if segments intersect
    /// bool intersects = GeometryUtils.segmentIntersectsSegment(segment1, segment2);
    /// print("Segments intersect: $intersects");
    /// ```
    static bool segmentIntersectsSegment(Segment segment1, Segment segment2) => $prototype.segmentIntersectsSegment(segment1, segment2);

    /// Calculate the intersection point of two segments
    /// [segment1] first segment of calculation [Segment]
    /// [segment2] second segment of calculation [Segment]
    /// Returns intersection point [Point]
    ///
    /// Example:
    /// ```dart
    /// // Calculate intersection point
    /// Point intersection = GeometryUtils.segmentIntersectionSegment(segment1, segment2);
    /// print("Intersection point: (${intersection.x.toStringAsFixed(2)}, ${intersection.y.toStringAsFixed(2)})");
    /// ```
    static Point segmentIntersectionSegment(Segment segment1, Segment segment2) => $prototype.segmentIntersectionSegment(segment1, segment2);

    /// Calculate the division ratio of a segment by a given segment(if intersects)
    /// [segment1] first segment of calculation [Segment]
    /// [segment2] second segment of calculation [Segment]
    /// Returns division ratio
    ///
    /// Example:
    /// ```dart
    /// // Calculate division ratio
    /// double divisionRatio = GeometryUtils.divisionRatioBySegment(segment1, segment2);
    /// print("Division ratio: ${divisionRatio.toStringAsFixed(2)}");
    /// ```
    static double divisionRatioBySegment(Segment segment1, Segment segment2) => $prototype.divisionRatioBySegment(segment1, segment2);

    /// Calculate projection point on a segment
    /// [segment] segment of calculation [Segment]
    /// [r] division ratio
    /// Returns ratio point [Point]
    ///
    /// Example:
    /// ```dart
    /// // Get point at specific ratio
    /// double ratio = 0.5;
    /// Point ratioPoint = GeometryUtils.getRatioPoint(segment1, ratio);
    /// print("Point at ratio $ratio: (${ratioPoint.x.toStringAsFixed(2)}, ${ratioPoint.y.toStringAsFixed(2)})");
    /// ```
    static Point getRatioPoint(Segment segment, double r) => $prototype.getRatioPoint(segment, r);

    /// Calculate the division ratio of a segment by a given point
    /// Calculate projection point on a segment
    /// [segment] segment of calculation [Segment]
    /// [point] point of calculation [Point]
    /// Returns division ratio
    ///
    /// Example:
    /// ```dart
    /// // Calculate projection ratio
    /// double projectionRatio = GeometryUtils.getProjectionRatio(segment1, testPoint);
    /// print("Projection ratio: ${projectionRatio.toStringAsFixed(2)}");
    /// ```
    static double getProjectionRatio(Segment segment, Point point) => $prototype.getProjectionRatio(segment, point);

    bool isValid();



    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = GeometryUtils$Impl.fromExternalPtr(Pointer<Void>.fromAddress(0));
}
