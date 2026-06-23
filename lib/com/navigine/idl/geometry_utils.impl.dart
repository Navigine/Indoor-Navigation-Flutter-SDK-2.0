part of 'geometry_utils.dart';

// GeometryUtils "private" section, not exported.

final _navigine_sdk_flutter_GeometryUtils_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_GeometryUtils_check'));

final _navigine_sdk_flutter_GeometryUtils_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_GeometryUtils_free');


class GeometryUtils$Impl implements GeometryUtils, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_GeometryUtils_free.cast());

    GeometryUtils$Impl.fromExternalPtr(this.ptr);

    @internal
    GeometryUtils$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory GeometryUtils$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_GeometryUtils_check(ptr);

    static Pointer<Void> getNativePtr(GeometryUtils? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as GeometryUtils$Impl).ptr;
    }

    static GeometryUtils? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return GeometryUtils$Impl.fromNativePtr(ptr);
    }

    double distanceBetweenGlobalPoints(GlobalPoint from, GlobalPoint to) {
        final _distanceBetweenGlobalPointsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(GlobalPointNative, GlobalPointNative),
            double Function(GlobalPointNative, GlobalPointNative)
          >('navigine_sdk_flutter_GeometryUtils_distanceBetweenGlobalPoints__From_To'));
        final __resultHandle = _distanceBetweenGlobalPointsFfi(GlobalPointImpl.toNative(from), GlobalPointImpl.toNative(to));
        final _result = __resultHandle;
        return _result;
    }
    double distanceBetweenPoints(Point from, Point to) {
        final _distanceBetweenPointsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(PointNative, PointNative),
            double Function(PointNative, PointNative)
          >('navigine_sdk_flutter_GeometryUtils_distanceBetweenPoints__From_To'));
        final __resultHandle = _distanceBetweenPointsFfi(PointImpl.toNative(from), PointImpl.toNative(to));
        final _result = __resultHandle;
        return _result;
    }
    double segmentLength(Segment segment) {
        final _segmentLengthFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(SegmentNative),
            double Function(SegmentNative)
          >('navigine_sdk_flutter_GeometryUtils_segmentLength__Segment'));
        final __resultHandle = _segmentLengthFfi(SegmentImpl.toNative(segment));
        final _result = __resultHandle;
        return _result;
    }
    double polygonArea(Polygon polygon) {
        final _polygonAreaFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(PolygonNative),
            double Function(PolygonNative)
          >('navigine_sdk_flutter_GeometryUtils_polygonArea__Polygon'));
        final __resultHandle = _polygonAreaFfi(PolygonImpl.toNative(polygon));
        final _result = __resultHandle;
        return _result;
    }
    Point polygonCenter(Polygon polygon) {
        final _polygonCenterFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PointNative Function(PolygonNative),
            PointNative Function(PolygonNative)
          >('navigine_sdk_flutter_GeometryUtils_polygonCenter__Polygon'));
        final __resultHandle = _polygonCenterFfi(PolygonImpl.toNative(polygon));
        final _result = PointImpl.fromNative(__resultHandle);
        return _result;
    }
    bool polygonContainsPoint(Polygon polygon, Point point) {
        final _polygonContainsPointFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(PolygonNative, PointNative),
            int Function(PolygonNative, PointNative)
          >('navigine_sdk_flutter_GeometryUtils_polygonContainsPoint__Polygon_Point'));
        final __resultHandle = _polygonContainsPointFfi(PolygonImpl.toNative(polygon), PointImpl.toNative(point));
        final _result = (__resultHandle != 0);
        return _result;
    }
    double segmentPointDistance(Segment segment, Point point) {
        final _segmentPointDistanceFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(SegmentNative, PointNative),
            double Function(SegmentNative, PointNative)
          >('navigine_sdk_flutter_GeometryUtils_segmentPointDistance__Segment_Point'));
        final __resultHandle = _segmentPointDistanceFfi(SegmentImpl.toNative(segment), PointImpl.toNative(point));
        final _result = __resultHandle;
        return _result;
    }
    bool segmentIntersectsSegment(Segment segment1, Segment segment2) {
        final _segmentIntersectsSegmentFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(SegmentNative, SegmentNative),
            int Function(SegmentNative, SegmentNative)
          >('navigine_sdk_flutter_GeometryUtils_segmentIntersectsSegment__Segment1_Segment2'));
        final __resultHandle = _segmentIntersectsSegmentFfi(SegmentImpl.toNative(segment1), SegmentImpl.toNative(segment2));
        final _result = (__resultHandle != 0);
        return _result;
    }
    Point segmentIntersectionSegment(Segment segment1, Segment segment2) {
        final _segmentIntersectionSegmentFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PointNative Function(SegmentNative, SegmentNative),
            PointNative Function(SegmentNative, SegmentNative)
          >('navigine_sdk_flutter_GeometryUtils_segmentIntersectionSegment__Segment1_Segment2'));
        final __resultHandle = _segmentIntersectionSegmentFfi(SegmentImpl.toNative(segment1), SegmentImpl.toNative(segment2));
        final _result = PointImpl.fromNative(__resultHandle);
        return _result;
    }
    double divisionRatioBySegment(Segment segment1, Segment segment2) {
        final _divisionRatioBySegmentFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(SegmentNative, SegmentNative),
            double Function(SegmentNative, SegmentNative)
          >('navigine_sdk_flutter_GeometryUtils_divisionRatioBySegment__Segment1_Segment2'));
        final __resultHandle = _divisionRatioBySegmentFfi(SegmentImpl.toNative(segment1), SegmentImpl.toNative(segment2));
        final _result = __resultHandle;
        return _result;
    }
    Point getRatioPoint(Segment segment, double r) {
        final _getRatioPointFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PointNative Function(SegmentNative, Double),
            PointNative Function(SegmentNative, double)
          >('navigine_sdk_flutter_GeometryUtils_getRatioPoint__Segment_R'));
        final __resultHandle = _getRatioPointFfi(SegmentImpl.toNative(segment), r);
        final _result = PointImpl.fromNative(__resultHandle);
        return _result;
    }
    double getProjectionRatio(Segment segment, Point point) {
        final _getProjectionRatioFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Double Function(SegmentNative, PointNative),
            double Function(SegmentNative, PointNative)
          >('navigine_sdk_flutter_GeometryUtils_getProjectionRatio__Segment_Point'));
        final __resultHandle = _getProjectionRatioFfi(SegmentImpl.toNative(segment), PointImpl.toNative(point));
        final _result = __resultHandle;
        return _result;
    }



}

// End of GeometryUtils "private" section.
