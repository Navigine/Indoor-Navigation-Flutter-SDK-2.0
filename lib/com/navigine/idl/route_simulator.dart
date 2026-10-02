import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/location_polyline.dart';
import 'package:navigine_sdk/com/navigine/idl/route_simulator_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/route_simulator_sample.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'route_simulator.impl.dart';
/// Walks a polyline at a constant speed for demos and guidance QA.
/// Distinct from [MeasurementManager] signal generators.
/// Does not publish a navigation position and does not move the user-location layer.
/// Hosts apply `sample` to an icon or other preview.
/// Created with [NavigineSdk] `getRouteSimulator`.
abstract class RouteSimulator implements Finalizable {

    /// Geometry in walk order. A later polyline may be on another floor.
    /// Returns false when fewer than two distinct points were given.
    ///
    /// Example:
    /// ```dart
    /// final walk = LocationPolyline(
    ///  [GlobalPoint(55.751, 37.618), GlobalPoint(55.752, 37.618)],
    ///  null,
    /// );
    /// routeSimulator?.setGeometry([walk]);
    /// ```
    bool setGeometry(List<LocationPolyline> polylines);

    /// Walking speed in meters per second. Default is 1.4. Zero pauses motion.
    ///
    /// Example:
    /// ```dart
    /// routeSimulator?.setSpeed(1.4);
    /// ```
    void setSpeed(double metersPerSecond);

    /// Current speed in meters per second.
    double speed();

    /// Starts from the beginning, or continues when already active.
    /// Returns false when geometry is missing.
    ///
    /// Example:
    /// ```dart
    /// final started = routeSimulator?.start() ?? false;
    /// print('Route walk started: $started');
    /// ```
    bool start();

    /// Stops and rewinds to the start. Does not emit `onFinished`.
    void stop();

    /// True while a walk is in progress.
    bool active();

    /// Latest sample, or null before the first tick.
    ///
    /// Example:
    /// ```dart
    /// final sample = routeSimulator?.sample();
    /// print('Walk advance: ${sample?.advance} m');
    /// ```
    RouteSimulatorSample? sample();

    void addListener(RouteSimulatorListener listener);

    void removeListener(RouteSimulatorListener listener);

    bool isValid();



}
