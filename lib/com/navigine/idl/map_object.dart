import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';

part 'map_object.impl.dart';
/**
 * @file com/navigine/idl/map_object.dart
 * @brief @copybrief MapObject
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Class is used to handle object on @see LocationWindow "LocationWindow" created and managing by user
 * Could be handled in `pickMapObjectAt` method @see LocationWindow "LocationWindow"
 *
 * Referenced from @see CircleMapObject "CircleMapObject", @see IconMapObject "IconMapObject", @see FlatIconMapObject "FlatIconMapObject".
 *
 */
abstract class MapObject implements Finalizable {

    /**
     * @brief Unique identifier of map object
     * @return Unique identifier of current map objcet @see MapObjectType "MapObjectType"
     */
    int getId();

    /**
     * @brief Map object type @see MapObjectType "MapObjectType".
     * Map object could be casted to the specified type.
     * @return Type of current map objcet @see MapObjectType "MapObjectType".
     */
    MapObjectType getType();

    /**
     * @brief Any kind of user's data
     * @return Data stored in map object @see MapObjectType "MapObjectType".
     */
    Uint8List getData();

    /**
     * @brief Method is used to change visibility of map object.
     * @param visible control visibility of the object.
     * @return true if success, false otherwise.
     */
    bool setVisible(bool visible);

    /**
     * @brief Method is used to interactive property
     * If True - map object could be handled in `pickMapObjectAt` method.
     * @param interactive control interactivity of the object.
     * @return true if success, false otherwise.
     */
    bool setInteractive(bool interactive);

    /**
     * @brief Method is used to apply custom styling to map object.
     * @param style styling string (@ref en/styles/styles.md).
     * @return true if success, false otherwise.
     */
    bool setStyle(String style);

    /**
     * @brief Method is used to set any kind of user's data
     * @param data Data to store in map object
     */
    void setData(Uint8List data);

    /**
     * @brief Method is used to set object title.
     * Title will shown on location view.
     * @param title of map object.
     * @return true if success, false otherwise.
     */
    bool setTitle(String title);



}
