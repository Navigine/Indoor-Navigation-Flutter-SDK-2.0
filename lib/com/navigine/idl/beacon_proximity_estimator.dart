import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_estimator_listener.dart';

part 'beacon_proximity_estimator.impl.dart';
/**
 * @file com/navigine/idl/beacon_proximity_estimator.dart
 * @brief @copybrief BeaconProximityEstimator
 */
abstract class BeaconProximityEstimator implements Finalizable {

    void start();

    void stop();

    void pause();

    void resume();

    void addListener(BeaconProximityEstimatorListener listener);

    void removeListener(BeaconProximityEstimatorListener listener);



}
