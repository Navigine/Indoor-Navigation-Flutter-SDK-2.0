import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_annotation_type.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'route_annotation.impl.dart';
class RouteAnnotation {
    /// Default constructor.
    RouteAnnotation(this.type, this.point, this.sublocationId, this.advance, this.title);
    RouteAnnotationType type;
    GlobalPoint point;
    int? sublocationId;
    double advance;
    String? title;
}
