import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_estimator_listener.dart';

part 'beacon_proximity_estimator.impl.dart';
abstract class BeaconProximityEstimator implements Finalizable {

    void start();

    void stop();

    void pause();

    void resume();

    void addListener(BeaconProximityEstimatorListener listener);

    void removeListener(BeaconProximityEstimatorListener listener);



}
