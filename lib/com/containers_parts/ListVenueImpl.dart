import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/venue.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListVenueImpl {
  ListVenueImpl._();

  static List<Venue> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Venue$Impl.fromExternalPtr(element));

  static List<Venue>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Venue$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Venue>? value) =>
    toNativeListNullable(value, (element) => Venue$Impl.getNativePtr(element));
}
