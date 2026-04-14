import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/circle_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';

part 'user_location_view.impl.dart';
/**
 * @file com/navigine/idl/user_location_view.dart
 * @brief @copybrief UserLocationView
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 */
abstract class UserLocationView implements Finalizable {


    /**
     * @brief Icon map object representing user arrow.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_common_example.dart dart_UserLocationView_getArrow
     *
     */
    IconMapObject get arrow;
    /**
     * @brief Accuracy circle around user position.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_common_example.dart dart_UserLocationView_getAccuracyCircle
     *
     */
    CircleMapObject get accuracyCircle;


}
