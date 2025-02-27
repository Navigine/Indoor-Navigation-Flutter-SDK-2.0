import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon.dart';
import 'package:navigine_sdk/com/navigine/idl/segment.dart';

abstract class GeometryUtils implements Finalizable {

    /** Get distance between GPS points */
    static double distanceBetweenGlobalPoints(GlobalPoint from, GlobalPoint to) => $prototype.distanceBetweenGlobalPoints(from, to);

    /** Get distance between points */
    static double distanceBetweenPoints(Point from, Point to) => $prototype.distanceBetweenPoints(from, to);

    /** Get length of segment */
    static double segmentLength(Segment segment) => $prototype.segmentLength(segment);

    /** Get polygon area */
    static double polygonArea(Polygon polygon) => $prototype.polygonArea(polygon);

    /** Get polygon geometric center */
    static Point polygonCenter(Polygon polygon) => $prototype.polygonCenter(polygon);

    /** Checks that polygon contains point */
    static bool polygonContainsPoint(Polygon polygon, Point point) => $prototype.polygonContainsPoint(polygon, point);

    /** Get distance from segment to point */
    static double segmentPointDistance(Segment segment, Point point) => $prototype.segmentPointDistance(segment, point);

    /** Checks the intersection of two segments */
    static bool segmentIntersectsSegment(Segment segment1, Segment segment2) => $prototype.segmentIntersectsSegment(segment1, segment2);

    /** Calculate the intersection point of two segments */
    static Point segmentIntersectionSegment(Segment segment1, Segment segment2) => $prototype.segmentIntersectionSegment(segment1, segment2);

    /** Calculate the division ratio of a segment by a given segment(if intersects) */
    static double divisionRatioBySegment(Segment segment1, Segment segment2) => $prototype.divisionRatioBySegment(segment1, segment2);

    /** Calculate projection point on a segment */
    static Point getRatioPoint(Segment segment, double r) => $prototype.getRatioPoint(segment, r);

    /** Calculate the division ratio of a segment by a given point */
    static double getProjectionRatio(Segment segment, Point point) => $prototype.getProjectionRatio(segment, point);



    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = GeometryUtils$Impl(Pointer<Void>.fromAddress(0));
}

// GeometryUtils "private" section, not exported.

final _navigine_sdk_flutter_GeometryUtils_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_GeometryUtils_copy_handle'));

final _navigine_sdk_flutter_GeometryUtils_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_GeometryUtils_release_handle'));

final _navigine_sdk_flutter_GeometryUtils_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_GeometryUtils_free');

final _navigine_sdk_flutter_GeometryUtils_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_GeometryUtils_create_proxy'));

final _navigine_sdk_flutter_GeometryUtils_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_GeometryUtils_set_ports'));


class GeometryUtils$Impl extends __lib.NativeBase implements GeometryUtils, Finalizable {
    GeometryUtils$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_GeometryUtils_free.cast());

    double distanceBetweenGlobalPoints(GlobalPoint from, GlobalPoint to) {
        final _distanceBetweenGlobalPointsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>, Pointer<Void>),
            double Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_distanceBetweenGlobalPoints__From_To'));
        final _fromHandle = navigine_sdk_flutter_GlobalPoint_ToFfi(from);
        final _toHandle = navigine_sdk_flutter_GlobalPoint_ToFfi(to);
        final __resultHandle = _distanceBetweenGlobalPointsFfi(_fromHandle, _toHandle);
        navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(_fromHandle);
        navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(_toHandle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(__resultHandle);
        }
    }
    double distanceBetweenPoints(Point from, Point to) {
        final _distanceBetweenPointsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>, Pointer<Void>),
            double Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_distanceBetweenPoints__From_To'));
        final _fromHandle = navigine_sdk_flutter_Point_ToFfi(from);
        final _toHandle = navigine_sdk_flutter_Point_ToFfi(to);
        final __resultHandle = _distanceBetweenPointsFfi(_fromHandle, _toHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_fromHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_toHandle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(__resultHandle);
        }
    }
    double segmentLength(Segment segment) {
        final _segmentLengthFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_segmentLength__Segment'));
        final _segmentHandle = navigine_sdk_flutter_Segment_ToFfi(segment);
        final __resultHandle = _segmentLengthFfi(_segmentHandle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_segmentHandle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(__resultHandle);
        }
    }
    double polygonArea(Polygon polygon) {
        final _polygonAreaFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_polygonArea__Polygon'));
        final _polygonHandle = navigine_sdk_flutter_Polygon_ToFfi(polygon);
        final __resultHandle = _polygonAreaFfi(_polygonHandle);
        navigine_sdk_flutter_Polygon_ReleaseFfiHandle(_polygonHandle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(__resultHandle);
        }
    }
    Point polygonCenter(Polygon polygon) {
        final _polygonCenterFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_polygonCenter__Polygon'));
        final _polygonHandle = navigine_sdk_flutter_Polygon_ToFfi(polygon);
        final __resultHandle = _polygonCenterFfi(_polygonHandle);
        navigine_sdk_flutter_Polygon_ReleaseFfiHandle(_polygonHandle);
        try  {
            return navigine_sdk_flutter_Point_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_Point_ReleaseFfiHandle(__resultHandle);
        }
    }
    bool polygonContainsPoint(Polygon polygon, Point point) {
        final _polygonContainsPointFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_polygonContainsPoint__Polygon_Point'));
        final _polygonHandle = navigine_sdk_flutter_Polygon_ToFfi(polygon);
        final _pointHandle = navigine_sdk_flutter_Point_ToFfi(point);
        final __resultHandle = _polygonContainsPointFfi(_polygonHandle, _pointHandle);
        navigine_sdk_flutter_Polygon_ReleaseFfiHandle(_polygonHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }
    double segmentPointDistance(Segment segment, Point point) {
        final _segmentPointDistanceFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>, Pointer<Void>),
            double Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_segmentPointDistance__Segment_Point'));
        final _segmentHandle = navigine_sdk_flutter_Segment_ToFfi(segment);
        final _pointHandle = navigine_sdk_flutter_Point_ToFfi(point);
        final __resultHandle = _segmentPointDistanceFfi(_segmentHandle, _pointHandle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_segmentHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(__resultHandle);
        }
    }
    bool segmentIntersectsSegment(Segment segment1, Segment segment2) {
        final _segmentIntersectsSegmentFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_segmentIntersectsSegment__Segment1_Segment2'));
        final _segment1Handle = navigine_sdk_flutter_Segment_ToFfi(segment1);
        final _segment2Handle = navigine_sdk_flutter_Segment_ToFfi(segment2);
        final __resultHandle = _segmentIntersectsSegmentFfi(_segment1Handle, _segment2Handle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_segment1Handle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_segment2Handle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }
    Point segmentIntersectionSegment(Segment segment1, Segment segment2) {
        final _segmentIntersectionSegmentFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_segmentIntersectionSegment__Segment1_Segment2'));
        final _segment1Handle = navigine_sdk_flutter_Segment_ToFfi(segment1);
        final _segment2Handle = navigine_sdk_flutter_Segment_ToFfi(segment2);
        final __resultHandle = _segmentIntersectionSegmentFfi(_segment1Handle, _segment2Handle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_segment1Handle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_segment2Handle);
        try  {
            return navigine_sdk_flutter_Point_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_Point_ReleaseFfiHandle(__resultHandle);
        }
    }
    double divisionRatioBySegment(Segment segment1, Segment segment2) {
        final _divisionRatioBySegmentFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>, Pointer<Void>),
            double Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_divisionRatioBySegment__Segment1_Segment2'));
        final _segment1Handle = navigine_sdk_flutter_Segment_ToFfi(segment1);
        final _segment2Handle = navigine_sdk_flutter_Segment_ToFfi(segment2);
        final __resultHandle = _divisionRatioBySegmentFfi(_segment1Handle, _segment2Handle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_segment1Handle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_segment2Handle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(__resultHandle);
        }
    }
    Point getRatioPoint(Segment segment, double r) {
        final _getRatioPointFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Double),
            Pointer<Void> Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_GeometryUtils_getRatioPoint__Segment_R'));
        final _segmentHandle = navigine_sdk_flutter_Segment_ToFfi(segment);
        final _rHandle = navigine_sdk_flutter_double_ToFfi(r);
        final __resultHandle = _getRatioPointFfi(_segmentHandle, _rHandle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_segmentHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_rHandle);
        try  {
            return navigine_sdk_flutter_Point_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_Point_ReleaseFfiHandle(__resultHandle);
        }
    }
    double getProjectionRatio(Segment segment, Point point) {
        final _getProjectionRatioFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Double Function(Pointer<Void>, Pointer<Void>),
            double Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_GeometryUtils_getProjectionRatio__Segment_Point'));
        final _segmentHandle = navigine_sdk_flutter_Segment_ToFfi(segment);
        final _pointHandle = navigine_sdk_flutter_Point_ToFfi(point);
        final __resultHandle = _getProjectionRatioFfi(_segmentHandle, _pointHandle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_segmentHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(__resultHandle);
        }
    }



}

Pointer<Void> navigine_sdk_flutter_GeometryUtils_ToFfi(GeometryUtils value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_GeometryUtils_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

GeometryUtils navigine_sdk_flutter_GeometryUtils_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_GeometryUtils_CopyHandle(handle);
    final result = GeometryUtils$Impl(_copiedHandle);
    GeometryUtils$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_GeometryUtils_ToFfiNullable(GeometryUtils? value) => 
  value != null ? navigine_sdk_flutter_GeometryUtils_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_GeometryUtils_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_GeometryUtils_ReleaseHandle(handle);

void navigine_sdk_flutter_GeometryUtils_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_GeometryUtils_ReleaseHandle(handle);

GeometryUtils? navigine_sdk_flutter_GeometryUtils_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_GeometryUtils_FromFfi(handle) : null;

// End of GeometryUtils "private" section.
