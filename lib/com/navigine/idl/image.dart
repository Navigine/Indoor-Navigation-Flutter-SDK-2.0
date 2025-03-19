import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/image_type.dart';

part 'image.impl.dart';
/**
 * @file com/navigine/idl/image.dart
 * @brief @copybrief Image
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief class described image data in SDK
 *
 * Referenced from @see Sublocation "Sublocation".
 *
 */
abstract class Image implements Finalizable {


    /**
     * @brief binary source data of the image
     */
    Uint8List get data;
    /**
     * @brief decoded image width
     */
    int get width;
    /**
     * @brief decoded image height
     */
    int get height;
    /**
     * @brief decoded image type
     */
    ImageType get type;


}
