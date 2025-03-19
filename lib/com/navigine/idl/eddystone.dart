import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';

part 'eddystone.impl.dart';
/**
 * @file com/navigine/idl/eddystone.dart
 * @brief @copybrief Eddystone
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 * @ingroup navigine_dart_transmitters
 * @brief Class is used for storing <a href="https://en.wikipedia.org/wiki/Eddystone_(Google)">Eddystone</a>.
 *
 * Referenced from @see Sublocation "Sublocation".
 *
 */
abstract class Eddystone implements Finalizable {


    /**
     * @brief eddystone's X and Y coordinates in meters as @see Point "Point" (within the sublocation).
     */
    Point get point;
    /**
     * @brief eddystone's location identifier.
     */
    int get locationId;
    /**
     * @brief eddystone's sublocation identifier.
     */
    int get sublocationId;
    /**
     * @brief eddystone's name.
     */
    String get name;
    /**
     * @brief eddystone's namespaceId.
     */
    String get namespaceId;
    /**
     * @brief eddystone's instanceId.
     */
    String get instanceId;
    /**
     * @brief eddystone's power.
     */
    int? get power;
    /**
     * @brief eddystone status. @see TransmitterStatus "TransmitterStatus"
     */
    TransmitterStatus get status;


}
