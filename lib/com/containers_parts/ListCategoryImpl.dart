import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/category.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListCategoryImpl {
  ListCategoryImpl._();

  static List<Category> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => CategoryImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<Category>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => CategoryImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<Category>? value) =>
    toNativeListNullable(value, (element) => CategoryImpl.toPointer(element));
}
