import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon.dart';
import 'package:navigine_sdk/com/navigine/idl/eddystone.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/graph.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_point.dart';
import 'package:navigine_sdk/com/navigine/idl/venue.dart';
import 'package:navigine_sdk/com/navigine/idl/wifi.dart';
import 'package:navigine_sdk/com/navigine/idl/zone.dart';
import 'package:navigine_sdk/image_wrapper.dart';

part 'sublocation.impl.dart';
/**
 * @file com/navigine/idl/sublocation.dart
 * @brief @copybrief Sublocation
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 * @brief Class is used for storing sublocation parameters: identifier, name, width, heigth, etc.
 *
 * The list of sublocations for the current location can be obtained from @see Location "Location" class using public method getSublocations.
 *
 * Referenced from @see Location "Location".
 */
abstract class Sublocation implements Finalizable {

    /**
     * @brief Method is used to obtain origin sublocation image with specified maxTextureSize.
     * @param maxTextureSize maximum texure size to render.
     * @return platform image.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getImage
     *
     */
    ImageWrapper getImage(int? maxTextureSize);

    /**
     * Method is used for converting the global geographic coordinates (latitude and longitude) to the local sublocation coordinates (x and y)
     * using the geographic binding of the sublocation
     * @param globalPoint point in WGS84 coordinates @see GlobalPoint "GlobalPoint"
     * @return point in metrics coordinates @see LocationPoint "LocationPoint".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_globalToLocal
     *
     */
    LocationPoint globalToLocal(GlobalPoint globalPoint);

    /**
     * @brief Method is used for converting the local sublocation coordinates to the global geographic coordinates (latitude and longitude)
     * using the geographic binding of the sublocation.
     * @param localPoint point in metrics coordinates @see LocationPoint "LocationPoint"
     * @return point in WGS84 coordinates @see GlobalPoint "GlobalPoint".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_localToGlobal
     *
     */
    GlobalPoint localToGlobal(LocationPoint localPoint);

    /**
     * @brief Method is used to obtain graph (within the current sublocation)
     * with the specified identifier or `null` if no such graph.
     * @param tag graph tag.
     * @return found graph or `null` @see Graph "Graph".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getGraph
     *
     */
    Graph getGraph(String tag);

    /**
     * @brief Method returns the venue (within the current sublocation)
     * with the specified identifier or `null` if no such venue exists.
     * @param id venue unique identifier.
     * @return found venue object or `null` @see Venue "Venue".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getVenueById
     *
     */
    Venue getVenueById(int id);

    /**
     * @brief Method returns the zone (within the current sublocation)
     * with the specified identifier or `null` if no such zone exists.
     * @param id zone unique identifier.
     * @return found zone object or `null` @see Zone "Zone".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getZoneById
     *
     */
    Zone getZoneById(int id);

    /**
     * @brief sublocation's identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getId
     *
     */
    int get id;
    /**
     * @brief location's identifier to which the sublocation belongs.
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getLocation
     *
     */
    int get location;
    /**
     * @brief sublocation's name.
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getName
     *
     */
    String get name;
    /**
     * @brief sublocation's width in meters.
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getWidth
     *
     */
    double get width;
    /**
     * @brief sublocation's height in meters.
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getHeight
     *
     */
    double get height;
    /**
     * @brief sublocation's altitude in meters if specified.
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getAltitude
     *
     */
    double? get altitude;
    /**
     * @brief sublocation's azimuth in degrees clockwise.
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getAzimuth
     *
     */
    double get azimuth;
    /**
     * @brief sublocation's center point in WGS84 coordinates @see GlobalPoint "GlobalPoint".
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getOriginPoint
     *
     */
    GlobalPoint get originPoint;
    /**
     * @brief sublocation's levelId.
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getLevelId
     *
     */
    String get levelId;
    /**
     * @brief sublocation's externalId.
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getExternalId
     *
     */
    String get externalId;
    /**
     * @brief List of beacons, attached to this sublocation @see Beacon "Beacon".
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getBeacons
     *
     */
    List<Beacon> get beacons;
    /**
     * @brief List of eddystones, attached to this sublocation @see Eddystone "Eddystone".
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getEddystones
     *
     */
    List<Eddystone> get eddystones;
    /**
     * @brief List of wifis, attached to this sublocation @see Wifi "Wifi".
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getWifis
     *
     */
    List<Wifi> get wifis;
    /**
     * @cond
     */
    List<ReferencePoint> get referencePoints;
    /**
     * @endcond
     * @brief List of venues, attached to this sublocation @see Venue "Venue".
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getVenues
     *
     */
    List<Venue> get venues;
    /**
     * @brief List of zones, attached to this sublocation @see Zone "Zone".
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Sublocation_getZones
     *
     */
    List<Zone> get zones;


}
