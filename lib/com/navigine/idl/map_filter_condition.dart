import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'map_filter_condition.impl.dart';
/**
 * @file com/navigine/idl/map_filter_condition.dart
 * @brief @copybrief MapFilterCondition
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief A single filter condition: property must match one of the given values.
 *
 *
 *
 *
 *Dart code snippet:
 *@snippet location_window_common_example.dart dart_MapFilterCondition_constructor
 *
 */
class MapFilterCondition {
    /// @brief Default constructor
    MapFilterCondition(this.property, this.values);
    /**
     * @brief The feature property to match (e.g. "category", "kind").
     */
    String property;
    /**
     * @brief List of allowed values. Feature is visible if its property matches any of these.
     */
    List<String> values;
}
