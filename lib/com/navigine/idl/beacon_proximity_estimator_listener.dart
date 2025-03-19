import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_entry.dart';
import 'package:navigine_sdk/error.dart';

part 'beacon_proximity_estimator_listener.impl.dart';
/**
 * @file com/navigine/idl/beacon_proximity_estimator_listener.dart
 * @brief @copybrief BeaconProximityEstimatorListener
 */
abstract class BeaconProximityEstimatorListener {

    void onScanResultReady(List<BeaconProximityEntry> beacons);

    void onProgressChanged(double progress);

    void onFinished(List<BeaconProximityEntry> beacons);

    void onFailed(Error error);



}
