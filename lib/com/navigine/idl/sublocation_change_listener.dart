import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/exception.dart' as exception;

part 'sublocation_change_listener.impl.dart';
/// Class is used to listen for sublocation change events
/// Referenced from [LocationWindow].
abstract class SublocationChangeListener {

    /// Called when active sublocation changes.
    /// [sublocationId] New active sublocation identifier.
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onActiveSublocationChanged(int sublocationId) {
    ///  print("Active sublocation changed to: $sublocationId");
    /// }
    /// ```
    void onActiveSublocationChanged(int sublocationId);



}
