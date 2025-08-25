import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/category.dart';
import 'package:navigine_sdk/com/navigine/idl/elevation_graph.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart';

part 'location.impl.dart';
/**
 * @file com/navigine/idl/location.dart
 * @brief @copybrief Location
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 * @brief Class is used for storing location parameters: identifier, version, name, a list of sublocations, etc.
 *
 * Location instance can be obtained from @see LocationManager "LocationManager" using @see LocationListener "LocationListener" callback,
 * when the location is loaded.
 *
 * Referenced from @see LocationManager "LocationManager" @see LocationListener "LocationListener".
 */
abstract class Location implements Finalizable {

    /**
     * @brief Method returns location elevation graph @see ElevationGraph "ElevationGraph"
     * for specified tag
     * @param tag Graph tag in CMS
     * @return Elevation graph instance or `null`.
     * @return @see ElevationGraph "ElevationGraph" of the current location with the specified tag, if it exists. If elevation graph with the specified tag doesn't exist, function returns null.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getElevationGraph
     *
     */
    ElevationGraph getElevationGraph(String tag);

    /**
     * @brief Method returns list of available graph tags.
     * @return Array of existing tags
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getGraphTags
     *
     */
    List<String> getGraphTags();

    /**
     * @brief Method is used for obtaining a sublocation with the specified identifier from the current location.
     * @param id sublocation identifier.
     * @return The @see Sublocation "Sublocation" of the current location with the specified identifier, if it exists. If sublocation with the specified identifier doesn't exist, function returns null.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getSublocationById
     *
     */
    Sublocation getSublocationById(int id);

    /**
     * @brief Method is used for obtaining a category with the specified identifier from the current location.
     * @param id category identifier.
     * @return @see Category "Category" of the current location with the specified identifier, if it exists. If category with the specified identifier doesn't exist, function returns null.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getCategoryById
     *
     */
    Category? getCategoryById(int id);

    /**
     * @brief location's identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getId
     *
     */
    int get id;
    /**
     * @brief location's version.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getVersion
     *
     */
    int get version;
    /**
     * @brief location name.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getName
     *
     */
    String get name;
    /**
     * @brief location's description.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getDescript
     *
     */
    String get descript;
    /**
     * @brief List of venue categories defined for the location @see Category "Category".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getCategories
     *
     */
    List<Category> get categories;
    /**
     * @brief List of sublocations @see Sublocation "Sublocation"
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getSublocations
     *
     */
    List<Sublocation> get sublocations;
    /**
     * @brief Flag indicates if location has been modified by user or not
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Location_getModified
     *
     */
    bool get modified;


}
