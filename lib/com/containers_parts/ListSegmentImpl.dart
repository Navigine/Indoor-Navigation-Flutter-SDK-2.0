import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/segment.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListSegmentImpl {
  ListSegmentImpl._();

  static List<Segment> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => SegmentImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<Segment>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => SegmentImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<Segment>? value) =>
    toNativeListNullable(value, (element) => SegmentImpl.toPointer(element));
}
