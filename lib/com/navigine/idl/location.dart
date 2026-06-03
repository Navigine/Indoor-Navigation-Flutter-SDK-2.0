import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/category.dart';
import 'package:navigine_sdk/com/navigine/idl/elevation_graph.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart';

part 'location.impl.dart';
/// Class is used for storing location parameters: identifier, version, name, a list of sublocations, etc.
/// Location instance can be obtained from [LocationManager] using [LocationListener] callback,
/// when the location is loaded.
/// Referenced from [LocationManager] [LocationListener].
abstract class Location implements Finalizable {

    /// Method returns location elevation graph [ElevationGraph]
    /// for specified tag
    /// [tag] Graph tag in CMS
    /// Returns Elevation graph instance or `null`.
    /// Returns [ElevationGraph] of the current location with the specified tag, if it exists. If elevation graph with the specified tag doesn't exist, function returns null.
    ///
    /// Example:
    /// ```dart
    /// // Get elevation graph by tag
    /// if (graphTags.isNotEmpty) {
    ///  ElevationGraph? elevationGraph = location.getElevationGraph(graphTags.first);
    ///  if (elevationGraph != null) {
    ///    demonstrateElevationGraphUsage(elevationGraph);
    ///  }
    /// }
    /// ```
    ElevationGraph getElevationGraph(String tag);

    /// Method returns list of available graph tags.
    /// Returns Array of existing tags
    ///
    /// Example:
    /// ```dart
    /// // Get available graph tags
    /// List<String> graphTags = location.getGraphTags();
    /// print('Available graph tags: $graphTags');
    /// ```
    List<String> getGraphTags();

    /// Method is used for obtaining a sublocation with the specified identifier from the current location.
    /// [id] sublocation identifier.
    /// Returns The [Sublocation] of the current location with the specified identifier, if it exists. If sublocation with the specified identifier doesn't exist, function returns null.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation by ID
    /// if (sublocations.isNotEmpty) {
    ///  Sublocation? sublocation = location.getSublocationById(sublocations.first.getId());
    ///  if (sublocation != null) {
    ///    demonstrateSublocationUsage(sublocation);
    ///  }
    /// }
    /// ```
    Sublocation getSublocationById(int id);

    /// Method is used for obtaining a category with the specified identifier from the current location.
    /// [id] category identifier.
    /// Returns [Category] of the current location with the specified identifier, if it exists. If category with the specified identifier doesn't exist, function returns null.
    ///
    /// Example:
    /// ```dart
    /// // Get category by ID
    /// if (categories.isNotEmpty) {
    ///  Category? category = location.getCategoryById(categories.first.getId());
    ///  if (category != null) {
    ///    demonstrateCategoryUsage(category);
    ///  }
    /// }
    /// ```
    Category? getCategoryById(int id);

    /// location's identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get location ID
    /// int locationId = location.getId();
    /// print('Location ID: $locationId');
    /// ```
    int get id;
    /// location's version.
    ///
    /// Example:
    /// ```dart
    /// // Get location version
    /// int version = location.getVersion();
    /// print('Location version: $version');
    /// ```
    int get version;
    /// location name.
    ///
    /// Example:
    /// ```dart
    /// // Get location name
    /// String? name = location.getName();
    /// print('Location name: $name');
    /// ```
    String get name;
    /// location's description.
    ///
    /// Example:
    /// ```dart
    /// // Get location description
    /// String? description = location.getDescript();
    /// print('Location description: $description');
    /// ```
    String get descript;
    /// List of venue categories defined for the location [Category].
    ///
    /// Example:
    /// ```dart
    /// // Get all categories
    /// List<Category> categories = location.getCategories();
    /// print('Number of categories: ${categories.length}');
    /// ```
    List<Category> get categories;
    /// List of sublocations [Sublocation]
    ///
    /// Example:
    /// ```dart
    /// // Get all sublocations
    /// List<Sublocation> sublocations = location.getSublocations();
    /// print('Number of sublocations: ${sublocations.length}');
    /// ```
    List<Sublocation> get sublocations;
    /// Flag indicates if location has been modified by user or not
    ///
    /// Example:
    /// ```dart
    /// // Check if location is modified
    /// bool isModified = location.getModified();
    /// print('Location modified: $isModified');
    /// ```
    bool get modified;


}
