import 'dart:ffi';
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/image_type.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'image.impl.dart';
/// class described image data in SDK
/// Referenced from [Sublocation].
abstract class Image implements Finalizable {


    bool isValid();

    /// binary source data of the image
    Uint8List get data;
    /// decoded image width
    int get width;
    /// decoded image height
    int get height;
    /// decoded image type
    ImageType get type;


}
