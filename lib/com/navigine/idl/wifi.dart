import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';

part 'wifi.impl.dart';
/**
 * @file com/navigine/idl/wifi.dart
 * @brief @copybrief Wifi
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 * @ingroup navigine_dart_transmitters
 * @brief Class is used for storing <a href="https://en.wikipedia.org/wiki/Wi-Fi">WiFi</a>.
 *
 * Referenced from @see Sublocation "Sublocation".
 *
 */
abstract class Wifi implements Finalizable {


    /**
     * @brief wifi's X and Y coordinates in meters as @see Point "Point" (within the sublocation).
     */
    Point get point;
    /**
     * @brief wifi's location identifier.
     */
    int get locationId;
    /**
     * @brief wifi's sublocation identifier.
     */
    int get sublocationId;
    /**
     * @brief wifi's name.
     */
    String get name;
    /**
     * @brief wifi's mac.
     */
    String get mac;
    /**
     * @brief wifi's status. @see TransmitterStatus "TransmitterStatus"
     */
    TransmitterStatus get status;


}
