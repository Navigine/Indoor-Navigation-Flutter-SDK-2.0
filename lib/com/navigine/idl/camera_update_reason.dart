import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'camera_update_reason.impl.dart';
/**
 * @file com/navigine/idl/camera_update_reason.dart
 * @brief @copybrief CameraUpdateReason
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 * @brief Reason of the camera update.
 *
 * Referenced from @see CameraListener "CameraListener".
 *
 */
enum CameraUpdateReason {
    /**
     * @brief user manipulation.
     *
     * For example: zoom, scroll, rotate, fling.
     */
    GESTURES,
    /**
     * @brief Application.
     *
     * By calling the LocationLiew::move methods.
     */
    APPLICATION,
}
