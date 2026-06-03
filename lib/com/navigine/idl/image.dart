import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/image_type.dart';

part 'image.impl.dart';
/// class described image data in SDK
/// Referenced from [Sublocation].
abstract class Image implements Finalizable {


    /// binary source data of the image
    Uint8List get data;
    /// decoded image width
    int get width;
    /// decoded image height
    int get height;
    /// decoded image type
    ImageType get type;


}
