import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_entry.dart';
import 'package:navigine_sdk/error.dart';

part 'beacon_proximity_estimator_listener.impl.dart';
abstract class BeaconProximityEstimatorListener {

    void onScanResultReady(List<BeaconProximityEntry> beacons);

    void onProgressChanged(double progress);

    void onFinished(List<BeaconProximityEntry> beacons);

    void onFailed(Error error);



}
