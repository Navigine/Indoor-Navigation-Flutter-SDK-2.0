import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'debug_flag.impl.dart';
/**
 * @file com/navigine/idl/debug_flag.dart
 * @brief @copybrief DebugFlag
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Debug visualization flags for the map view @see LocationWindow "LocationWindow".
 *
 *
 *
 *
 *Dart code snippet:
 *@snippet location_window_common_example.dart dart_DebugFlag_enum
 *
 */
enum DebugFlag {
    NONE,
    INFOS,
    STATS,
    LABELS,
    DRAW_ALL_LABELS,
    SELECTION_BUFFER,
}
