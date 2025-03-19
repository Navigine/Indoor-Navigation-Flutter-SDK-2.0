import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';

part 'beacon.impl.dart';
/**
 * @file com/navigine/idl/beacon.dart
 * @brief @copybrief Beacon
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 * @ingroup navigine_dart_transmitters
 * @brief Class is used for storing <a href="https://en.wikipedia.org/wiki/IBeacon">iBeacon</a>.
 *
 * Referenced from @see Sublocation "Sublocation".
 *
 */
abstract class Beacon implements Finalizable {


    /**
     * @brief beacon's X and Y coordinates in meters as @see Point "Point" (within the sublocation).
     */
    Point get point;
    /**
     * @brief beacon's location identifier.
     */
    int get locationId;
    /**
     * @brief beacon's sublocation identifier.
     */
    int get sublocationId;
    /**
     * @brief beacon's name.
     */
    String get name;
    /**
     * @brief beacon's major. Values [1-65535]
     */
    int get major;
    /**
     * @brief beacon's minor. Values [1-65535]
     */
    int get minor;
    /**
     * @brief beacon's uuid. Format [XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX]
     */
    String get uuid;
    /**
     * iBeacon power. If exsists.
     * @brief beacon's power.
     */
    int? get power;
    /**
     * @brief iBeacon status. @see TransmitterStatus "TransmitterStatus"
     */
    TransmitterStatus get status;


}
