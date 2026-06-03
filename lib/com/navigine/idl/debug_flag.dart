import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'debug_flag.impl.dart';
/// Debug visualization flags for the map view [LocationWindow].
///
/// Example:
/// ```dart
/// final allFlags = [
///  DebugFlag.NONE,
///  DebugFlag.INFOS,
///  DebugFlag.STATS,
///  DebugFlag.LABELS,
///  DebugFlag.DRAW_ALL_LABELS,
///  DebugFlag.SELECTION_BUFFER,
/// ];
/// print("Debug flag enum values: ${allFlags.length}");
/// ```
enum DebugFlag {
    NONE,
    INFOS,
    STATS,
    LABELS,
    DRAW_ALL_LABELS,
    SELECTION_BUFFER,
}
