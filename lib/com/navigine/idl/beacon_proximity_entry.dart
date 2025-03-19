import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'beacon_proximity_entry.impl.dart';
/**
 * @file com/navigine/idl/beacon_proximity_entry.dart
 * @brief @copybrief BeaconProximityEntry
 */
class BeaconProximityEntry {
    /// @brief Default constructor
    BeaconProximityEntry(this.major, this.minor, this.uuid, this.rssi, this.frequency, this.quality, this.distance);
    int major;
    int minor;
    String uuid;
    double rssi;
    double frequency;
    double quality;
    double? distance;
}
