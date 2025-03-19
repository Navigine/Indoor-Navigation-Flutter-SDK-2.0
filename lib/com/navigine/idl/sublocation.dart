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
     */
    ImageWrapper getImage(int? maxTextureSize);

    /**
     * Method is used for converting the global geographic coordinates (latitude and longitude) to the local sublocation coordinates (x and y)
     * using the geographic binding of the sublocation
     * @param globalPoint point in WGS84 coordinates @see GlobalPoint "GlobalPoint"
     * @return point in metrics coordinates @see LocationPoint "LocationPoint".
     */
    LocationPoint globalToLocal(GlobalPoint globalPoint);

    /**
     * @brief Method is used for converting the local sublocation coordinates to the global geographic coordinates (latitude and longitude)
     * using the geographic binding of the sublocation.
     * @param localPoint point in metrics coordinates @see LocationPoint "LocationPoint"
     * @return point in WGS84 coordinates @see GlobalPoint "GlobalPoint".
     */
    GlobalPoint localToGlobal(LocationPoint localPoint);

    /**
     * @brief Method is used to obtain graph (within the current sublocation)
     * with the specified identifier or `null` if no such graph.
     * @param tag graph tag.
     * @return found graph or `null` @see Graph "Graph".
     */
    Graph getGraph(String tag);

    /**
     * @brief Method returns the venue (within the current sublocation)
     * with the specified identifier or `null` if no such venue exists.
     * @param id venue unique identifier.
     * @return found venue object or `null` @see Venue "Venue".
     */
    Venue getVenueById(int id);

    /**
     * @brief Method returns the zone (within the current sublocation)
     * with the specified identifier or `null` if no such zone exists.
     * @param id zone unique identifier.
     * @return found zone object or `null` @see Zone "Zone".
     */
    Zone getZoneById(int id);

    /**
     * @brief sublocation's identifier.
     */
    int get id;
    /**
     * @brief location's identifier to which the sublocation belongs.
     */
    int get location;
    /**
     * @brief sublocation's name.
     */
    String get name;
    /**
     * @brief sublocation's width in meters.
     */
    double get width;
    /**
     * @brief sublocation's height in meters.
     */
    double get height;
    /**
     * @brief sublocation's altitude in meters if specified.
     */
    double? get altitude;
    /**
     * @brief sublocation's azimuth in degrees clockwise.
     */
    double get azimuth;
    /**
     * @brief sublocation's center point in WGS84 coordinates @see GlobalPoint "GlobalPoint".
     */
    GlobalPoint get originPoint;
    /**
     * @brief sublocation's levelId.
     */
    String get levelId;
    /**
     * @brief sublocation's externalId.
     */
    String get externalId;
    /**
     * @brief List of beacons, attached to this sublocation @see Beacon "Beacon".
     */
    List<Beacon> get beacons;
    /**
     * @brief List of eddystones, attached to this sublocation @see Eddystone "Eddystone".
     */
    List<Eddystone> get eddystones;
    /**
     * @brief List of wifis, attached to this sublocation @see Wifi "Wifi".
     */
    List<Wifi> get wifis;
    /**
     * @cond
     */
    List<ReferencePoint> get referencePoints;
    /**
     * @endcond
     * @brief List of venues, attached to this sublocation @see Venue "Venue".
     */
    List<Venue> get venues;
    /**
     * @brief List of zones, attached to this sublocation @see Zone "Zone".
     */
    List<Zone> get zones;


}
