import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'venue.impl.dart';
/// Class is used for storing venue.
/// Referenced from [Sublocation].
abstract class Venue implements Finalizable {


    bool isValid();

    /// venue's X and Y coordinates in meters as [Point] (within the sublocation).
    ///
    /// Example:
    /// ```dart
    /// // Get venue point
    /// Point? point = venue.getPoint();
    /// if (point != null) {
    ///  demonstratePointUsage(point);
    /// }
    /// ```
    Point get point;
    /// venue's location identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get venue location ID
    /// int locationId = venue.getLocationId();
    /// print('Venue location ID: $locationId');
    /// ```
    int get locationId;
    /// venue's sublocation identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get venue sublocation ID
    /// int sublocationId = venue.getSublocationId();
    /// print('Venue sublocation ID: $sublocationId');
    /// ```
    int get sublocationId;
    /// venue's identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get venue ID
    /// int venueId = venue.getId();
    /// print('Venue ID: $venueId');
    /// ```
    int get id;
    /// venue's name.
    ///
    /// Example:
    /// ```dart
    /// // Get venue name
    /// String? venueName = venue.getName();
    /// print('Venue name: $venueName');
    /// ```
    String get name;
    /// venue's phone.
    ///
    /// Example:
    /// ```dart
    /// // Get venue phone
    /// String? phone = venue.getPhone();
    /// print('Venue phone: $phone');
    /// ```
    String get phone;
    /// venue's description.
    ///
    /// Example:
    /// ```dart
    /// // Get venue description
    /// String? venueDescription = venue.getDescript();
    /// print('Venue description: $venueDescription');
    /// ```
    String get descript;
    /// venue's alias.
    ///
    /// Example:
    /// ```dart
    /// // Get venue alias
    /// String? alias = venue.getAlias();
    /// print('Venue alias: $alias');
    /// ```
    String get alias;
    /// venue's category unique identifier [Category]
    ///
    /// Example:
    /// ```dart
    /// // Get category ID
    /// int categoryId = venue.getCategoryId();
    /// print('Venue category ID: $categoryId');
    /// ```
    int get categoryId;
    /// venue's image url if specified.
    ///
    /// Example:
    /// ```dart
    /// // Get venue image URL
    /// String? imageUrl = venue.getImageUrl();
    /// if (imageUrl != null) {
    ///  print('Venue image URL: $imageUrl');
    /// }
    /// ```
    String? get imageUrl;


}
