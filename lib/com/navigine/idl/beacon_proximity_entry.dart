import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'beacon_proximity_entry.impl.dart';
class BeaconProximityEntry {
    /// Default constructor.
    BeaconProximityEntry(this.major, this.minor, this.uuid, this.rssi, this.frequency, this.quality, this.distance);
    int major;
    int minor;
    String uuid;
    double rssi;
    double frequency;
    double quality;
    double? distance;
}
