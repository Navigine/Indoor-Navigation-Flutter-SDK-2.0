import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/route_simulator_sample.dart';

part 'route_simulator_listener.impl.dart';
/// Walk progress. `onFinished` follows the last sample.
abstract class RouteSimulatorListener {

    void onSample(RouteSimulatorSample sample);

    void onFinished();



}
