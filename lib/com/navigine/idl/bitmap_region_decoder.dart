import 'dart:ffi';
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/image.dart';
import 'package:navigine_sdk/com/navigine/idl/rectangle.dart';
import 'package:navigine_sdk/image_wrapper.dart';

part 'bitmap_region_decoder.impl.dart';
/// Class is used for getting bitmaps (png, jpg, svg) from byte array.
abstract class BitmapRegionDecoder implements Finalizable {

    /// Method is used to create instance of BitmapRegionDecoder
    /// [data] raw image data (could be raw svg string)
    /// Returns nstance of decoder, which could be used for decoding byte array to bitmap.
    ///
    /// Example:
    /// ```dart
    /// // Create new instance of BitmapRegionDecoder
    /// _decoder = BitmapRegionDecoder.newInstance(_imageData!);
    /// print("Created BitmapRegionDecoder instance");
    /// ```
    static BitmapRegionDecoder newInstance(Uint8List data) => $prototype.newInstance(data);

    /// Creates decoder from [Image] without copying raw bytes again.
    /// [data] image instance (e.g. from SDK pipeline); must remain valid while decoder is used
    /// Returns decoder instance or null on error
    ///
    /// Example:
    /// ```dart
    /// // When you already have an Image (e.g. from SDK), create decoder without passing raw bytes again
    /// final Image? imageForDecoder = null; // set from your pipeline when available
    /// final BitmapRegionDecoder? decoderFromImage =
    ///    BitmapRegionDecoder.newInstanceFromImage(imageForDecoder);
    /// print('Decoder from Image: ${decoderFromImage != null}');
    /// ```
    static BitmapRegionDecoder newInstanceFromImage(Image data) => $prototype.newInstanceFromImage(data);

    /// Method is used to decode rectangle region in the image specified by rect.
    /// [rect] area to render [Rectangle]
    /// [sampleSize] if set to a value > 1, requests the decoder to subsample the original image, returning a smaller image to save memory.
    /// Returns constructed bitmap
    ///
    /// Example:
    /// ```dart
    /// // Decode region with sample size 1 (full resolution)
    /// ImageWrapper decodedImage = _decoder!.decodeRegion(sampleRect, 1);
    /// print(
    ///  "Decoded region: ${sampleRect.width}x${sampleRect.height} at sample size 1",
    /// );
    /// ```
    ImageWrapper decodeRegion(Rectangle rect, double sampleSize);

    /// Width of the source image in pixels (after header parse / decode metadata).
    ///
    /// Example:
    /// ```dart
    /// final sourceWidth = _decoder!.width;
    /// print('Source image width: $sourceWidth');
    /// ```
    int get width;
    /// Height of the source image in pixels (after header parse / decode metadata).
    ///
    /// Example:
    /// ```dart
    /// final sourceHeight = _decoder!.height;
    /// print('Source image height: $sourceHeight');
    /// ```
    int get height;


    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = BitmapRegionDecoder$Impl(Pointer<Void>.fromAddress(0));
}
