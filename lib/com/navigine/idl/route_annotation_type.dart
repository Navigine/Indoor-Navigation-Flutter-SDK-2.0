import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'route_annotation_type.impl.dart';
enum RouteAnnotationType {
    START,
    FINISH,
    TRANSITION,
    MANEUVER,
    WARNING,
}
