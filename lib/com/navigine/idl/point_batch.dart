import 'dart:ffi';
import 'dart:math' as math;
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/com/navigine/idl/point_sprite.dart';
import 'package:navigine_sdk/com/navigine/idl/title_style.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;
import 'package:navigine_sdk/screen_point.dart';

part 'point_batch.impl.dart';
/// One object for a cloud of screen-space arrows.
/// `setPoints` replaces the whole set. The list order is the index returned by
/// `hitTest`. The host draws the tooltip. Points are not clustered.
abstract class PointBatch implements MapObject, Finalizable {

    /// Replaces every arrow. `sublocationId` null draws on the outdoor map.
    /// Returns false when the object has been removed.
    bool setPoints(List<PointSprite> points, int? sublocationId);

    /// Index of the nearest arrow inside `radius` pixels, or null.
    int? hitTest(math.Point<double> point, double radius);

    bool isValid();



}
