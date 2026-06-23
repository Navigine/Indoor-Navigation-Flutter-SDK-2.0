part of 'polyline.dart';

// Polyline "private" section, not exported.

final class PolylineNative extends Struct {
    external Pointer<Void> points;
}

final PolylineNative Function(Pointer<Void>) _PolylineNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<PolylineNative Function(Pointer<Void>)>>('navigine_sdk_flutter_Polyline_init')
  .asFunction<PolylineNative Function(Pointer<Void>)>(isLeaf: true));

extension PolylineImpl on Polyline  {
    static Polyline fromNative(PolylineNative native, {bool takeOwnership = true})  {
        return Polyline(
          ListPointImpl.fromNativePtr(native.points),
        );
    }

    static PolylineNative toNative(Polyline obj)  {
        return _PolylineNativeInit(
          ListPointImpl.getNativePtr(obj.points),
        );
    }

    static Polyline? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = PolylineImpl.fromNative(ptr.cast<PolylineNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Polyline? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<PolylineNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of Polyline "private" section.
