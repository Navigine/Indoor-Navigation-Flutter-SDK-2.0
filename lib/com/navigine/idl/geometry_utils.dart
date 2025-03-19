import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon.dart';
import 'package:navigine_sdk/com/navigine/idl/segment.dart';

part 'geometry_utils.impl.dart';
/**
 * @file com/navigine/idl/geometry_utils.dart
 * @brief @copybrief GeometryUtils
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief A set of functions for working with geometries.
 *
 */
abstract class GeometryUtils implements Finalizable {

    /**
     * @brief Get distance between GPS points
     * @param from start point of calculation @see GlobalPoint "GlobalPoint"
     * @param to end point of calculation @see GlobalPoint "GlobalPoint"
     * @return distance in meters
     */
    static double distanceBetweenGlobalPoints(GlobalPoint from, GlobalPoint to) => $prototype.distanceBetweenGlobalPoints(from, to);

    /**
     * @brief Get distance between points
     * @param from start point of calculation @see Point "Point"
     * @param to end point of calculation @see Point "Point"
     * @return distance in meters
     */
    static double distanceBetweenPoints(Point from, Point to) => $prototype.distanceBetweenPoints(from, to);

    /**
     * @brief Get length of segment
     * @param segment segment object for calculation @see Segment "Segment"
     * @return length in meters
     */
    static double segmentLength(Segment segment) => $prototype.segmentLength(segment);

    /**
     * @brief Get polygon area
     * @param polygon polygon object for calculation @see Polygon "Polygon"
     * @return area in meters
     */
    static double polygonArea(Polygon polygon) => $prototype.polygonArea(polygon);

    /**
     * @brief Get polygon geometric center
     * @param polygon polygon object for calculation @see Polygon "Polygon"
     * @return center point @see Point "Point"
     */
    static Point polygonCenter(Polygon polygon) => $prototype.polygonCenter(polygon);

    /**
     * @brief Checks that polygon contains point
     * @param polygon polygon object in which looking for contents @see Polygon "Polygon"
     * @param point checking point object @see Point "Point"
     * @return contains or not
     */
    static bool polygonContainsPoint(Polygon polygon, Point point) => $prototype.polygonContainsPoint(polygon, point);

    /**
     * @brief Get distance from segment to point
     * @param segment start segment of calculation @see Segment "Segment"
     * @param point end point of calculation @see Point "Point"
     * @return distance in meters
     */
    static double segmentPointDistance(Segment segment, Point point) => $prototype.segmentPointDistance(segment, point);

    /**
     * @brief Checks the intersection of two segments
     * @param segment1 first segment of calculation @see Segment "Segment"
     * @param segment2 second segment of calculation @see Segment "Segment"
     * @return intersects or not
     */
    static bool segmentIntersectsSegment(Segment segment1, Segment segment2) => $prototype.segmentIntersectsSegment(segment1, segment2);

    /**
     * @brief Calculate the intersection point of two segments
     * @param segment1 first segment of calculation @see Segment "Segment"
     * @param segment2 second segment of calculation @see Segment "Segment"
     * @return intersection point @see Point "Point"
     */
    static Point segmentIntersectionSegment(Segment segment1, Segment segment2) => $prototype.segmentIntersectionSegment(segment1, segment2);

    /**
     * @brief Calculate the division ratio of a segment by a given segment(if intersects)
     * @param segment1 first segment of calculation @see Segment "Segment"
     * @param segment2 second segment of calculation @see Segment "Segment"
     * @return division ratio
     */
    static double divisionRatioBySegment(Segment segment1, Segment segment2) => $prototype.divisionRatioBySegment(segment1, segment2);

    /**
     * @brief Calculate projection point on a segment
     * @param segment segment of calculation @see Segment "Segment"
     * @param r division ratio
     * @return ratio point @see Point "Point"
     */
    static Point getRatioPoint(Segment segment, double r) => $prototype.getRatioPoint(segment, r);

    /**
     * @brief Calculate the division ratio of a segment by a given point
     * Calculate projection point on a segment
     * @param segment segment of calculation @see Segment "Segment"
     * @param point point of calculation @see Point "Point"
     * @return division ratio
     */
    static double getProjectionRatio(Segment segment, Point point) => $prototype.getProjectionRatio(segment, point);



    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = GeometryUtils$Impl(Pointer<Void>.fromAddress(0));
}
