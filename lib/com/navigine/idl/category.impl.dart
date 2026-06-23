part of 'category.dart';

// Category "private" section, not exported.

final class CategoryNative extends Struct {
    @Int32()
    external int id;
    external NativeString name;
    external Pointer<Void> imageUrl;
}

final CategoryNative Function(int, NativeString, Pointer<Void>) _CategoryNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<CategoryNative Function(Int32, NativeString, Pointer<Void>)>>('navigine_sdk_flutter_Category_init')
  .asFunction<CategoryNative Function(int, NativeString, Pointer<Void>)>(isLeaf: true));

extension CategoryImpl on Category  {
    static Category fromNative(CategoryNative native, {bool takeOwnership = true})  {
        return Category(
          native.id,
          toPlatformString(native.name, takeOwnership: takeOwnership),
          toPlatformFromPointerString(native.imageUrl),
        );
    }

    static CategoryNative toNative(Category obj)  {
        return _CategoryNativeInit(
          obj.id,
          toNativeString(obj.name),
          toNativePtrString(obj.imageUrl),
        );
    }

    static Category? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = CategoryImpl.fromNative(ptr.cast<CategoryNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Category? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<CategoryNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of Category "private" section.
