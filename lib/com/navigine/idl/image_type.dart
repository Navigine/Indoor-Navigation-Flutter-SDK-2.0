import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'image_type.impl.dart';
/// Enum described supported image types
/// Referenced from [Image].
enum ImageType {
    /// PNG format
    PNG,
    /// SVG format
    SVG,
    /// JPG format
    JPG,
}
