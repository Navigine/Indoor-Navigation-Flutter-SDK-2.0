part of 'image_type.dart';

// ImageType "private" section, not exported.

extension ImageTypeImpl on ImageType  {
    static int toInt(ImageType e) => e.index;

    static ImageType fromInt(int val)  {
        if (val < 0 || val >= ImageType.values.length) {
          throw StateError('Invalid numeric value $val for ImageType enum.');
        }
        return ImageType.values[val];
    }

    static ImageType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(ImageType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of ImageType "private" section.
