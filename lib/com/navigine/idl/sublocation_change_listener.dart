import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;

part 'sublocation_change_listener.impl.dart';
/**
 * @file com/navigine/idl/sublocation_change_listener.dart
 * @brief @copybrief SublocationChangeListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Class is used to listen for sublocation change events
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class SublocationChangeListener {

    /**
     * @brief Called when active sublocation changes.
     * @param sublocationId New active sublocation identifier.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_common_example.dart dart_SublocationChangeListener_onActiveSublocationChanged
     *
     */
    void onActiveSublocationChanged(int sublocationId);



}
