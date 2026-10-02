import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/point_sprite.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListPointSpriteImpl {
  ListPointSpriteImpl._();

  static List<PointSprite> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => PointSpriteImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<PointSprite>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => PointSpriteImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<PointSprite>? value) =>
    toNativeListNullable(value, (element) => PointSpriteImpl.toPointer(element));
}
