import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'map_filter_condition.impl.dart';
/// A single filter condition: property must match one of the given values.
///
/// Example:
/// ```dart
/// // Create filter condition: show only venues with category "Toilet" or "Cafe"
/// final condition = MapFilterCondition(property: "category", values: ["Toilet", "Cafe"]);
/// ```
class MapFilterCondition {
    /// Default constructor.
    MapFilterCondition(this.property, this.values);
    /// The feature property to match (e.g. "category", "kind").
    String property;
    /// List of allowed values. Feature is visible if its property matches any of these.
    List<String> values;
}
