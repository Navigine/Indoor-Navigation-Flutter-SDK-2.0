import 'dart:ffi';
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/rectangle.dart';
import 'package:navigine_sdk/image_wrapper.dart';

part 'bitmap_region_decoder.impl.dart';
/**
 * @file com/navigine/idl/bitmap_region_decoder.dart
 * @brief @copybrief BitmapRegionDecoder
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 * @brief Сlass is used for getting bitmaps (png, jpg, svg) from byte array.
 */
abstract class BitmapRegionDecoder implements Finalizable {

    /**
     *
     * @brief Method is used to create instance of BitmapRegionDecoder
     * @param data raw image data (could be raw svg string)
     * @return nstance of decoder, which could be used for decoding byte array to bitmap.
     *
     *
     *
     * Dart code snippet:
     * @snippet bitmap_region_decoder_example.dart dart_BitmapRegionDecoder_newInstance
     *
     */
    static BitmapRegionDecoder newInstance(Uint8List data) => $prototype.newInstance(data);

    /**
     *
     * @brief Method is used to decode rectangle region in the image specified by rect.
     * @param rect area to render @see Rectangle "Rectangle"
     * @param sampleSize if set to a value > 1, requests the decoder to subsample the original image, returning a smaller image to save memory.
     * @return constructed bitmap
     *
     *
     *
     * Dart code snippet:
     * @snippet bitmap_region_decoder_example.dart dart_BitmapRegionDecoder_decodeRegion
     *
     */
    ImageWrapper decodeRegion(Rectangle rect, double sampleSize);



    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = BitmapRegionDecoder$Impl(Pointer<Void>.fromAddress(0));
}
