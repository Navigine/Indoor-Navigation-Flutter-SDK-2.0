part of 'title_style.dart';

// TitleStyle "private" section, not exported.

final class TitleStyleNative extends Struct {
    @Float()
    external double fontSize;
    @Int32()
    external int color;
    @Int32()
    external int outlineColor;
    @Float()
    external double outlineWidth;
    @Uint32()
    external int anchor;
    @Bool()
    external bool visible;
}

final TitleStyleNative Function(double, int, int, double, int, int) _TitleStyleNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<TitleStyleNative Function(Float, Int32, Int32, Float, Uint32, Uint8)>>('navigine_sdk_flutter_TitleStyle_init')
  .asFunction<TitleStyleNative Function(double, int, int, double, int, int)>(isLeaf: true));

extension TitleStyleImpl on TitleStyle  {
    static TitleStyle fromNative(TitleStyleNative native, {bool takeOwnership = true})  {
        return TitleStyle(
          fontSize: native.fontSize,
          color: Color(native.color),
          outlineColor: Color(native.outlineColor),
          outlineWidth: native.outlineWidth,
          anchor: TitleAnchorImpl.fromInt(native.anchor),
          visible: native.visible,
        );
    }

    static TitleStyleNative toNative(TitleStyle obj)  {
        return _TitleStyleNativeInit(
          obj.fontSize,
          obj.color.value,
          obj.outlineColor.value,
          obj.outlineWidth,
          TitleAnchorImpl.toInt(obj.anchor),
          (obj.visible ? 1 : 0),
        );
    }

    static TitleStyle? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = TitleStyleImpl.fromNative(ptr.cast<TitleStyleNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TitleStyle? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<TitleStyleNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of TitleStyle "private" section.
