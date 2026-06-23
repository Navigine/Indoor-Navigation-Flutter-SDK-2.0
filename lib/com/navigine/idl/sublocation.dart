import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon.dart';
import 'package:navigine_sdk/com/navigine/idl/eddystone.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/graph.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_point.dart';
import 'package:navigine_sdk/com/navigine/idl/venue.dart';
import 'package:navigine_sdk/com/navigine/idl/wifi.dart';
import 'package:navigine_sdk/com/navigine/idl/zone.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;
import 'package:navigine_sdk/image_wrapper.dart';

part 'sublocation.impl.dart';
/// Class is used for storing sublocation parameters: identifier, name, width, height, etc.
/// The list of sublocations for the current location can be obtained from [Location] class using public method getSublocations.
/// Referenced from [Location].
abstract class Sublocation implements Finalizable {

    /// Method is used to obtain origin sublocation image with specified maxTextureSize.
    /// [maxTextureSize] maximum texture size to render.
    /// Returns platform image.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation image
    /// ImageWrapper? image = sublocation.getImage(1024); // max texture size 1024
    /// if (image != null) {
    ///  print('Sublocation image obtained with max texture size 1024');
    /// }
    /// ```
    ImageWrapper getImage(int? maxTextureSize);

    /// Method is used for converting the global geographic coordinates (latitude and longitude) to the local sublocation coordinates (x and y)
    /// using the geographic binding of the sublocation
    /// [globalPoint] point in WGS84 coordinates [GlobalPoint]
    /// Returns point in metrics coordinates [LocationPoint].
    ///
    /// Example:
    /// ```dart
    /// // Convert global coordinates to local coordinates
    /// GlobalPoint globalPoint = GlobalPoint(55.7558, 37.6176); // Moscow coordinates
    /// LocationPoint localPoint = sublocation.globalToLocal(globalPoint);
    /// print('Global point ${globalPoint.getLat()}, ${globalPoint.getLon()} converted to local: ${localPoint.getX()}, ${localPoint.getY()}');
    /// ```
    LocationPoint globalToLocal(GlobalPoint globalPoint);

    /// Method is used for converting the local sublocation coordinates to the global geographic coordinates (latitude and longitude)
    /// using the geographic binding of the sublocation.
    /// [localPoint] point in metrics coordinates [LocationPoint]
    /// Returns point in WGS84 coordinates [GlobalPoint].
    ///
    /// Example:
    /// ```dart
    /// // Convert local coordinates to global coordinates
    /// LocationPoint localPoint2 = LocationPoint(100.0, 200.0);
    /// GlobalPoint globalPoint2 = sublocation.localToGlobal(localPoint2);
    /// print('Local point ${localPoint2.getX()}, ${localPoint2.getY()} converted to global: ${globalPoint2.getLat()}, ${globalPoint2.getLon()}');
    /// ```
    GlobalPoint localToGlobal(LocationPoint localPoint);

    /// Method is used to obtain graph (within the current sublocation)
    /// with the specified identifier or `null` if no such graph.
    /// [tag] graph tag.
    /// Returns found graph or `null` [Graph].
    ///
    /// Example:
    /// ```dart
    /// // Get graph
    /// Graph? graph = sublocation.getGraph();
    /// if (graph != null) {
    ///  demonstrateGraphUsage(graph);
    /// }
    /// ```
    Graph getGraph(String tag);

    /// Method returns the venue (within the current sublocation)
    /// with the specified identifier or `null` if no such venue exists.
    /// [id] venue unique identifier.
    /// Returns found venue object or `null` [Venue].
    ///
    /// Example:
    /// ```dart
    /// // Get venue by ID
    /// if (venues.isNotEmpty) {
    ///  Venue? venueById = sublocation.getVenueById(venues.first.getId());
    ///  if (venueById != null) {
    ///    print('Found venue by ID: ${venueById.getId()}');
    ///    demonstrateVenueUsage(venueById);
    ///  }
    /// }
    /// ```
    Venue getVenueById(int id);

    /// Method returns the zone (within the current sublocation)
    /// with the specified identifier or `null` if no such zone exists.
    /// [id] zone unique identifier.
    /// Returns found zone object or `null` [Zone].
    ///
    /// Example:
    /// ```dart
    /// // Get zone by ID
    /// if (zones.isNotEmpty) {
    ///  Zone? zoneById = sublocation.getZoneById(zones.first.getId());
    ///  if (zoneById != null) {
    ///    print('Found zone by ID: ${zoneById.getId()}');
    ///    demonstrateZoneUsage(zoneById);
    ///  }
    /// }
    /// ```
    Zone getZoneById(int id);

    bool isValid();

    /// sublocation's identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation ID
    /// int sublocationId = sublocation.getId();
    /// print('Sublocation ID: $sublocationId');
    /// ```
    int get id;
    /// location's identifier to which the sublocation belongs.
    ///
    /// Example:
    /// ```dart
    /// // Get location ID
    /// int locationId = sublocation.getLocation();
    /// print('Sublocation location ID: $locationId');
    /// ```
    int get location;
    /// sublocation's name.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation name
    /// String? sublocationName = sublocation.getName();
    /// print('Sublocation name: $sublocationName');
    /// ```
    String get name;
    /// sublocation's width in meters.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation width in meters
    /// double width = sublocation.getWidth();
    /// print('Sublocation width: $width meters');
    /// ```
    double get width;
    /// sublocation's height in meters.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation height in meters
    /// double height = sublocation.getHeight();
    /// print('Sublocation height: $height meters');
    /// ```
    double get height;
    /// sublocation's altitude in meters if specified.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation altitude in meters
    /// double? altitude = sublocation.getAltitude();
    /// if (altitude != null) {
    ///  print('Sublocation altitude: $altitude meters');
    /// }
    /// ```
    double? get altitude;
    /// sublocation's azimuth in degrees clockwise.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation azimuth in degrees
    /// double azimuth = sublocation.getAzimuth();
    /// print('Sublocation azimuth: $azimuth degrees');
    /// ```
    double get azimuth;
    /// sublocation's center point in WGS84 coordinates [GlobalPoint].
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation origin point in WGS84 coordinates
    /// GlobalPoint originPoint = sublocation.getOriginPoint();
    /// print('Sublocation origin point: ${originPoint.getLat()}, ${originPoint.getLon()}');
    /// ```
    GlobalPoint get originPoint;
    /// sublocation's levelId.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation level ID
    /// String levelId = sublocation.getLevelId();
    /// print('Sublocation level ID: $levelId');
    /// ```
    String get levelId;
    /// sublocation's externalId.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation external ID
    /// String externalId = sublocation.getExternalId();
    /// print('Sublocation external ID: $externalId');
    /// ```
    String get externalId;
    /// sublocation's building name (e.g. "Outdoor" for overview plan).
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation building name
    /// String buildingName = sublocation.getBuildingName();
    /// print('Sublocation building name: $buildingName');
    /// ```
    String get buildingName;
    /// List of beacons, attached to this sublocation [Beacon].
    ///
    /// Example:
    /// ```dart
    /// // Get beacons
    /// List<Beacon> beacons = sublocation.getBeacons();
    /// print('Number of beacons: ${beacons.length}');
    /// ```
    List<Beacon> get beacons;
    /// List of eddystones, attached to this sublocation [Eddystone].
    ///
    /// Example:
    /// ```dart
    /// // Get Eddystone beacons
    /// List<Eddystone> eddystones = sublocation.getEddystones();
    /// print('Number of Eddystone beacons: ${eddystones.length}');
    /// ```
    List<Eddystone> get eddystones;
    /// List of wifis, attached to this sublocation [Wifi].
    ///
    /// Example:
    /// ```dart
    /// // Get WiFi access points
    /// List<Wifi> wifis = sublocation.getWifis();
    /// print('Number of WiFi access points: ${wifis.length}');
    /// ```
    List<Wifi> get wifis;
    List<ReferencePoint> get referencePoints;
    /// List of venues, attached to this sublocation [Venue].
    ///
    /// Example:
    /// ```dart
    /// // Get venues
    /// List<Venue> venues = sublocation.getVenues();
    /// print('Number of venues: ${venues.length}');
    /// ```
    List<Venue> get venues;
    /// List of zones, attached to this sublocation [Zone].
    ///
    /// Example:
    /// ```dart
    /// // Get zones
    /// List<Zone> zones = sublocation.getZones();
    /// print('Number of zones: ${zones.length}');
    /// ```
    List<Zone> get zones;


}
