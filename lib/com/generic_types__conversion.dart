

import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_entry.dart';
import 'package:navigine_sdk/com/navigine/idl/category.dart';
import 'package:navigine_sdk/com/navigine/idl/eddystone.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_vertex.dart';
import 'package:navigine_sdk/com/navigine/idl/location_info.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_entry.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_event.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_measurement.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_type.dart';
import 'package:navigine_sdk/com/navigine/idl/signal_measurement.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart';
import 'package:navigine_sdk/com/navigine/idl/venue.dart';
import 'package:navigine_sdk/com/navigine/idl/wifi.dart';
import 'package:navigine_sdk/com/navigine/idl/zone.dart';

import 'dart:ffi';

import 'package:navigine_sdk/com/_library_context.dart' as __lib;




final _listofNavigineIdlBeaconCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_Beacon_create_handle'));
final _listofNavigineIdlBeaconReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Beacon_release_handle'));
final _listofNavigineIdlBeaconInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Beacon_insert'));
final _listofNavigineIdlBeaconIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Beacon_iterator'));
final _listofNavigineIdlBeaconIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Beacon_iterator_release_handle'));
final _listofNavigineIdlBeaconIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_Beacon_iterator_is_valid'));
final _listofNavigineIdlBeaconIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Beacon_iterator_increment'));
final _listofNavigineIdlBeaconIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Beacon_iterator_get'));

Pointer<Void> listofNavigineIdlBeaconToFfi(List<Beacon> value) {
  final _result = _listofNavigineIdlBeaconCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlBeaconToFfi(element);
    _listofNavigineIdlBeaconInsert(_result, _elementHandle);
    navigineIdlBeaconReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<Beacon> listofNavigineIdlBeaconFromFfi(Pointer<Void> handle) {
  final result = List<Beacon>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlBeaconIterator(handle);
  while (_listofNavigineIdlBeaconIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlBeaconIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlBeaconFromFfi(_elementHandle));
    } finally {
      navigineIdlBeaconReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlBeaconIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlBeaconIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlBeaconReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlBeaconReleaseHandle(handle);

final _listofNavigineIdlBeaconCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Beacon_create_handle_nullable'));
final _listofNavigineIdlBeaconReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Beacon_release_handle_nullable'));
final _listofNavigineIdlBeaconGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Beacon_get_value_nullable'));

Pointer<Void> listofNavigineIdlBeaconToFfiNullable(List<Beacon>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlBeaconToFfi(value);
  final result = _listofNavigineIdlBeaconCreateHandleNullable(_handle);
  listofNavigineIdlBeaconReleaseFfiHandle(_handle);
  return result;
}

List<Beacon>? listofNavigineIdlBeaconFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlBeaconGetValueNullable(handle);
  final result = listofNavigineIdlBeaconFromFfi(_handle);
  listofNavigineIdlBeaconReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlBeaconReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlBeaconReleaseHandleNullable(handle);

// final _listofNavigineIdlBeaconproximityentryCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Pointer<Void> Function(),
//     Pointer<Void> Function()
//   >('navigine_ListOf_navigine_idl_BeaconProximityEntry_create_handle'));
// final _listofNavigineIdlBeaconproximityentryReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Void Function(Pointer<Void>),
//     void Function(Pointer<Void>)
//   >('navigine_ListOf_navigine_idl_BeaconProximityEntry_release_handle'));
// final _listofNavigineIdlBeaconproximityentryInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Void Function(Pointer<Void>, Pointer<Void>),
//     void Function(Pointer<Void>, Pointer<Void>)
//   >('navigine_ListOf_navigine_idl_BeaconProximityEntry_insert'));
// final _listofNavigineIdlBeaconproximityentryIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Pointer<Void> Function(Pointer<Void>),
//     Pointer<Void> Function(Pointer<Void>)
// >('navigine_ListOf_navigine_idl_BeaconProximityEntry_iterator'));
// final _listofNavigineIdlBeaconproximityentryIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Void Function(Pointer<Void>),
//     void Function(Pointer<Void>)
// >('navigine_ListOf_navigine_idl_BeaconProximityEntry_iterator_release_handle'));
// final _listofNavigineIdlBeaconproximityentryIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Int8 Function(Pointer<Void>, Pointer<Void>),
//     int Function(Pointer<Void>, Pointer<Void>)
// >('navigine_ListOf_navigine_idl_BeaconProximityEntry_iterator_is_valid'));
// final _listofNavigineIdlBeaconproximityentryIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Void Function(Pointer<Void>),
//     void Function(Pointer<Void>)
// >('navigine_ListOf_navigine_idl_BeaconProximityEntry_iterator_increment'));
// final _listofNavigineIdlBeaconproximityentryIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Pointer<Void> Function(Pointer<Void>),
//     Pointer<Void> Function(Pointer<Void>)
// >('navigine_ListOf_navigine_idl_BeaconProximityEntry_iterator_get'));


// Pointer<Void> navigine_sdk_flutter_List_BeaconProximityEntry__ToFfi(List<BeaconProximityEntry> value) {
//   final _result = _listofNavigineIdlBeaconproximityentryCreateHandle();
//   for (final element in value) {
//     final _elementHandle = navigineIdlBeaconproximityentryToFfi(element);
//     _listofNavigineIdlBeaconproximityentryInsert(_result, _elementHandle);
//     navigineIdlBeaconproximityentryReleaseFfiHandle(_elementHandle);
//   }
//   return _result;
// }

// List<BeaconProximityEntry> listofNavigineIdlBeaconproximityentryFromFfi(Pointer<Void> handle) {
//   final result = List<BeaconProximityEntry>.empty(growable: true);
//   final _iteratorHandle = _listofNavigineIdlBeaconproximityentryIterator(handle);
//   while (_listofNavigineIdlBeaconproximityentryIteratorIsValid(handle, _iteratorHandle) != 0) {
//     final _elementHandle = _listofNavigineIdlBeaconproximityentryIteratorGet(_iteratorHandle);
//     try {
//       result.add(navigineIdlBeaconproximityentryFromFfi(_elementHandle));
//     } finally {
//       navigineIdlBeaconproximityentryReleaseFfiHandle(_elementHandle);
//     }
//     _listofNavigineIdlBeaconproximityentryIteratorIncrement(_iteratorHandle);
//   }
//   _listofNavigineIdlBeaconproximityentryIteratorReleaseHandle(_iteratorHandle);
//   return result;
// }

// void listofNavigineIdlBeaconproximityentryReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlBeaconproximityentryReleaseHandle(handle);

// final _listofNavigineIdlBeaconproximityentryCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Pointer<Void> Function(Pointer<Void>),
//     Pointer<Void> Function(Pointer<Void>)
//   >('navigine_ListOf_navigine_idl_BeaconProximityEntry_create_handle_nullable'));
// final _listofNavigineIdlBeaconproximityentryReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Void Function(Pointer<Void>),
//     void Function(Pointer<Void>)
//   >('navigine_ListOf_navigine_idl_BeaconProximityEntry_release_handle_nullable'));
// final _listofNavigineIdlBeaconproximityentryGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
//     Pointer<Void> Function(Pointer<Void>),
//     Pointer<Void> Function(Pointer<Void>)
//   >('navigine_ListOf_navigine_idl_BeaconProximityEntry_get_value_nullable'));

// Pointer<Void> listofNavigineIdlBeaconproximityentryToFfiNullable(List<BeaconProximityEntry>? value) {
//   if (value == null) return Pointer<Void>.fromAddress(0);
//   final _handle = navigine_sdk_flutter_List_BeaconProximityEntry__ToFfi(value);
//   final result = _listofNavigineIdlBeaconproximityentryCreateHandleNullable(_handle);
//   listofNavigineIdlBeaconproximityentryReleaseFfiHandle(_handle);
//   return result;
// }

// List<BeaconProximityEntry>? listofNavigineIdlBeaconproximityentryFromFfiNullable(Pointer<Void> handle) {
//   if (handle.address == 0) return null;
//   final _handle = _listofNavigineIdlBeaconproximityentryGetValueNullable(handle);
//   final result = listofNavigineIdlBeaconproximityentryFromFfi(_handle);
//   listofNavigineIdlBeaconproximityentryReleaseFfiHandle(_handle);
//   return result;
// }

// void listofNavigineIdlBeaconproximityentryReleaseFfiHandleNullable(Pointer<Void> handle) =>
//   _listofNavigineIdlBeaconproximityentryReleaseHandleNullable(handle);

final _listofNavigineIdlCategoryCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_Category_create_handle'));
final _listofNavigineIdlCategoryReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Category_release_handle'));
final _listofNavigineIdlCategoryInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Category_insert'));
final _listofNavigineIdlCategoryIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Category_iterator'));
final _listofNavigineIdlCategoryIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Category_iterator_release_handle'));
final _listofNavigineIdlCategoryIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_Category_iterator_is_valid'));
final _listofNavigineIdlCategoryIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Category_iterator_increment'));
final _listofNavigineIdlCategoryIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Category_iterator_get'));

Pointer<Void> listofNavigineIdlCategoryToFfi(List<Category> value) {
  final _result = _listofNavigineIdlCategoryCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlCategoryToFfi(element);
    _listofNavigineIdlCategoryInsert(_result, _elementHandle);
    navigineIdlCategoryReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<Category> listofNavigineIdlCategoryFromFfi(Pointer<Void> handle) {
  final result = List<Category>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlCategoryIterator(handle);
  while (_listofNavigineIdlCategoryIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlCategoryIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlCategoryFromFfi(_elementHandle));
    } finally {
      navigineIdlCategoryReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlCategoryIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlCategoryIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlCategoryReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlCategoryReleaseHandle(handle);

final _listofNavigineIdlCategoryCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Category_create_handle_nullable'));
final _listofNavigineIdlCategoryReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Category_release_handle_nullable'));
final _listofNavigineIdlCategoryGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Category_get_value_nullable'));

Pointer<Void> listofNavigineIdlCategoryToFfiNullable(List<Category>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlCategoryToFfi(value);
  final result = _listofNavigineIdlCategoryCreateHandleNullable(_handle);
  listofNavigineIdlCategoryReleaseFfiHandle(_handle);
  return result;
}

List<Category>? listofNavigineIdlCategoryFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlCategoryGetValueNullable(handle);
  final result = listofNavigineIdlCategoryFromFfi(_handle);
  listofNavigineIdlCategoryReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlCategoryReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlCategoryReleaseHandleNullable(handle);

final _listofNavigineIdlEddystoneCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_Eddystone_create_handle'));
final _listofNavigineIdlEddystoneReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Eddystone_release_handle'));
final _listofNavigineIdlEddystoneInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Eddystone_insert'));
final _listofNavigineIdlEddystoneIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Eddystone_iterator'));
final _listofNavigineIdlEddystoneIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Eddystone_iterator_release_handle'));
final _listofNavigineIdlEddystoneIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_Eddystone_iterator_is_valid'));
final _listofNavigineIdlEddystoneIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Eddystone_iterator_increment'));
final _listofNavigineIdlEddystoneIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Eddystone_iterator_get'));

Pointer<Void> listofNavigineIdlEddystoneToFfi(List<Eddystone> value) {
  final _result = _listofNavigineIdlEddystoneCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlEddystoneToFfi(element);
    _listofNavigineIdlEddystoneInsert(_result, _elementHandle);
    navigineIdlEddystoneReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<Eddystone> listofNavigineIdlEddystoneFromFfi(Pointer<Void> handle) {
  final result = List<Eddystone>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlEddystoneIterator(handle);
  while (_listofNavigineIdlEddystoneIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlEddystoneIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlEddystoneFromFfi(_elementHandle));
    } finally {
      navigineIdlEddystoneReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlEddystoneIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlEddystoneIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlEddystoneReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlEddystoneReleaseHandle(handle);

final _listofNavigineIdlEddystoneCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Eddystone_create_handle_nullable'));
final _listofNavigineIdlEddystoneReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Eddystone_release_handle_nullable'));
final _listofNavigineIdlEddystoneGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Eddystone_get_value_nullable'));

Pointer<Void> listofNavigineIdlEddystoneToFfiNullable(List<Eddystone>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlEddystoneToFfi(value);
  final result = _listofNavigineIdlEddystoneCreateHandleNullable(_handle);
  listofNavigineIdlEddystoneReleaseFfiHandle(_handle);
  return result;
}

List<Eddystone>? listofNavigineIdlEddystoneFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlEddystoneGetValueNullable(handle);
  final result = listofNavigineIdlEddystoneFromFfi(_handle);
  listofNavigineIdlEddystoneReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlEddystoneReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlEddystoneReleaseHandleNullable(handle);

final _listofNavigineIdlGraphedgeCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_GraphEdge_create_handle'));
final _listofNavigineIdlGraphedgeReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_GraphEdge_release_handle'));
final _listofNavigineIdlGraphedgeInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_GraphEdge_insert'));
final _listofNavigineIdlGraphedgeIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_GraphEdge_iterator'));
final _listofNavigineIdlGraphedgeIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_GraphEdge_iterator_release_handle'));
final _listofNavigineIdlGraphedgeIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_GraphEdge_iterator_is_valid'));
final _listofNavigineIdlGraphedgeIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_GraphEdge_iterator_increment'));
final _listofNavigineIdlGraphedgeIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_GraphEdge_iterator_get'));

Pointer<Void> listofNavigineIdlGraphedgeToFfi(List<GraphEdge> value) {
  final _result = _listofNavigineIdlGraphedgeCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlGraphedgeToFfi(element);
    _listofNavigineIdlGraphedgeInsert(_result, _elementHandle);
    navigineIdlGraphedgeReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<GraphEdge> listofNavigineIdlGraphedgeFromFfi(Pointer<Void> handle) {
  final result = List<GraphEdge>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlGraphedgeIterator(handle);
  while (_listofNavigineIdlGraphedgeIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlGraphedgeIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlGraphedgeFromFfi(_elementHandle));
    } finally {
      navigineIdlGraphedgeReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlGraphedgeIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlGraphedgeIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlGraphedgeReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlGraphedgeReleaseHandle(handle);

final _listofNavigineIdlGraphedgeCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_GraphEdge_create_handle_nullable'));
final _listofNavigineIdlGraphedgeReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_GraphEdge_release_handle_nullable'));
final _listofNavigineIdlGraphedgeGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_GraphEdge_get_value_nullable'));

Pointer<Void> listofNavigineIdlGraphedgeToFfiNullable(List<GraphEdge>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlGraphedgeToFfi(value);
  final result = _listofNavigineIdlGraphedgeCreateHandleNullable(_handle);
  listofNavigineIdlGraphedgeReleaseFfiHandle(_handle);
  return result;
}

List<GraphEdge>? listofNavigineIdlGraphedgeFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlGraphedgeGetValueNullable(handle);
  final result = listofNavigineIdlGraphedgeFromFfi(_handle);
  listofNavigineIdlGraphedgeReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlGraphedgeReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlGraphedgeReleaseHandleNullable(handle);

final _listofNavigineIdlGraphvertexCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_GraphVertex_create_handle'));
final _listofNavigineIdlGraphvertexReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_GraphVertex_release_handle'));
final _listofNavigineIdlGraphvertexInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_GraphVertex_insert'));
final _listofNavigineIdlGraphvertexIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_GraphVertex_iterator'));
final _listofNavigineIdlGraphvertexIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_GraphVertex_iterator_release_handle'));
final _listofNavigineIdlGraphvertexIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_GraphVertex_iterator_is_valid'));
final _listofNavigineIdlGraphvertexIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_GraphVertex_iterator_increment'));
final _listofNavigineIdlGraphvertexIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_GraphVertex_iterator_get'));

Pointer<Void> listofNavigineIdlGraphvertexToFfi(List<GraphVertex> value) {
  final _result = _listofNavigineIdlGraphvertexCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlGraphvertexToFfi(element);
    _listofNavigineIdlGraphvertexInsert(_result, _elementHandle);
    navigineIdlGraphvertexReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<GraphVertex> listofNavigineIdlGraphvertexFromFfi(Pointer<Void> handle) {
  final result = List<GraphVertex>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlGraphvertexIterator(handle);
  while (_listofNavigineIdlGraphvertexIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlGraphvertexIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlGraphvertexFromFfi(_elementHandle));
    } finally {
      navigineIdlGraphvertexReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlGraphvertexIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlGraphvertexIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlGraphvertexReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlGraphvertexReleaseHandle(handle);

final _listofNavigineIdlGraphvertexCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_GraphVertex_create_handle_nullable'));
final _listofNavigineIdlGraphvertexReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_GraphVertex_release_handle_nullable'));
final _listofNavigineIdlGraphvertexGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_GraphVertex_get_value_nullable'));

Pointer<Void> listofNavigineIdlGraphvertexToFfiNullable(List<GraphVertex>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlGraphvertexToFfi(value);
  final result = _listofNavigineIdlGraphvertexCreateHandleNullable(_handle);
  listofNavigineIdlGraphvertexReleaseFfiHandle(_handle);
  return result;
}

List<GraphVertex>? listofNavigineIdlGraphvertexFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlGraphvertexGetValueNullable(handle);
  final result = listofNavigineIdlGraphvertexFromFfi(_handle);
  listofNavigineIdlGraphvertexReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlGraphvertexReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlGraphvertexReleaseHandleNullable(handle);

final _listofNavigineIdlLocationpointCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_LocationPoint_create_handle'));
final _listofNavigineIdlLocationpointReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_LocationPoint_release_handle'));
final _listofNavigineIdlLocationpointInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_LocationPoint_insert'));
final _listofNavigineIdlLocationpointIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_LocationPoint_iterator'));
final _listofNavigineIdlLocationpointIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_LocationPoint_iterator_release_handle'));
final _listofNavigineIdlLocationpointIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_LocationPoint_iterator_is_valid'));
final _listofNavigineIdlLocationpointIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_LocationPoint_iterator_increment'));
final _listofNavigineIdlLocationpointIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_LocationPoint_iterator_get'));

Pointer<Void> listofNavigineIdlLocationpointToFfi(List<LocationPoint> value) {
  final _result = _listofNavigineIdlLocationpointCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlLocationpointToFfi(element);
    _listofNavigineIdlLocationpointInsert(_result, _elementHandle);
    navigineIdlLocationpointReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<LocationPoint> listofNavigineIdlLocationpointFromFfi(Pointer<Void> handle) {
  final result = List<LocationPoint>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlLocationpointIterator(handle);
  while (_listofNavigineIdlLocationpointIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlLocationpointIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlLocationpointFromFfi(_elementHandle));
    } finally {
      navigineIdlLocationpointReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlLocationpointIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlLocationpointIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlLocationpointReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlLocationpointReleaseHandle(handle);

final _listofNavigineIdlLocationpointCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_LocationPoint_create_handle_nullable'));
final _listofNavigineIdlLocationpointReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_LocationPoint_release_handle_nullable'));
final _listofNavigineIdlLocationpointGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_LocationPoint_get_value_nullable'));

Pointer<Void> listofNavigineIdlLocationpointToFfiNullable(List<LocationPoint>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlLocationpointToFfi(value);
  final result = _listofNavigineIdlLocationpointCreateHandleNullable(_handle);
  listofNavigineIdlLocationpointReleaseFfiHandle(_handle);
  return result;
}

List<LocationPoint>? listofNavigineIdlLocationpointFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlLocationpointGetValueNullable(handle);
  final result = listofNavigineIdlLocationpointFromFfi(_handle);
  listofNavigineIdlLocationpointReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlLocationpointReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlLocationpointReleaseHandleNullable(handle);

final _listofNavigineIdlPointCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_Point_create_handle'));
final _listofNavigineIdlPointReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Point_release_handle'));
final _listofNavigineIdlPointInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Point_insert'));
final _listofNavigineIdlPointIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Point_iterator'));
final _listofNavigineIdlPointIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Point_iterator_release_handle'));
final _listofNavigineIdlPointIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_Point_iterator_is_valid'));
final _listofNavigineIdlPointIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Point_iterator_increment'));
final _listofNavigineIdlPointIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Point_iterator_get'));

Pointer<Void> listofNavigineIdlPointToFfi(List<Point> value) {
  final _result = _listofNavigineIdlPointCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlPointToFfi(element);
    _listofNavigineIdlPointInsert(_result, _elementHandle);
    navigineIdlPointReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<Point> listofNavigineIdlPointFromFfi(Pointer<Void> handle) {
  final result = List<Point>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlPointIterator(handle);
  while (_listofNavigineIdlPointIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlPointIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlPointFromFfi(_elementHandle));
    } finally {
      navigineIdlPointReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlPointIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlPointIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlPointReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlPointReleaseHandle(handle);

final _listofNavigineIdlPointCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Point_create_handle_nullable'));
final _listofNavigineIdlPointReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Point_release_handle_nullable'));
final _listofNavigineIdlPointGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Point_get_value_nullable'));

Pointer<Void> listofNavigineIdlPointToFfiNullable(List<Point>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlPointToFfi(value);
  final result = _listofNavigineIdlPointCreateHandleNullable(_handle);
  listofNavigineIdlPointReleaseFfiHandle(_handle);
  return result;
}

List<Point>? listofNavigineIdlPointFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlPointGetValueNullable(handle);
  final result = listofNavigineIdlPointFromFfi(_handle);
  listofNavigineIdlPointReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlPointReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlPointReleaseHandleNullable(handle);

final _listofNavigineIdlReferenceentryCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_ReferenceEntry_create_handle'));
final _listofNavigineIdlReferenceentryReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_ReferenceEntry_release_handle'));
final _listofNavigineIdlReferenceentryInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_ReferenceEntry_insert'));
final _listofNavigineIdlReferenceentryIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_ReferenceEntry_iterator'));
final _listofNavigineIdlReferenceentryIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_ReferenceEntry_iterator_release_handle'));
final _listofNavigineIdlReferenceentryIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_ReferenceEntry_iterator_is_valid'));
final _listofNavigineIdlReferenceentryIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_ReferenceEntry_iterator_increment'));
final _listofNavigineIdlReferenceentryIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_ReferenceEntry_iterator_get'));

Pointer<Void> listofNavigineIdlReferenceentryToFfi(List<ReferenceEntry> value) {
  final _result = _listofNavigineIdlReferenceentryCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlReferenceentryToFfi(element);
    _listofNavigineIdlReferenceentryInsert(_result, _elementHandle);
    navigineIdlReferenceentryReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<ReferenceEntry> listofNavigineIdlReferenceentryFromFfi(Pointer<Void> handle) {
  final result = List<ReferenceEntry>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlReferenceentryIterator(handle);
  while (_listofNavigineIdlReferenceentryIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlReferenceentryIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlReferenceentryFromFfi(_elementHandle));
    } finally {
      navigineIdlReferenceentryReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlReferenceentryIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlReferenceentryIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlReferenceentryReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlReferenceentryReleaseHandle(handle);

final _listofNavigineIdlReferenceentryCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_ReferenceEntry_create_handle_nullable'));
final _listofNavigineIdlReferenceentryReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_ReferenceEntry_release_handle_nullable'));
final _listofNavigineIdlReferenceentryGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_ReferenceEntry_get_value_nullable'));

Pointer<Void> listofNavigineIdlReferenceentryToFfiNullable(List<ReferenceEntry>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlReferenceentryToFfi(value);
  final result = _listofNavigineIdlReferenceentryCreateHandleNullable(_handle);
  listofNavigineIdlReferenceentryReleaseFfiHandle(_handle);
  return result;
}

List<ReferenceEntry>? listofNavigineIdlReferenceentryFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlReferenceentryGetValueNullable(handle);
  final result = listofNavigineIdlReferenceentryFromFfi(_handle);
  listofNavigineIdlReferenceentryReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlReferenceentryReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlReferenceentryReleaseHandleNullable(handle);

final _listofNavigineIdlReferencepointCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_ReferencePoint_create_handle'));
final _listofNavigineIdlReferencepointReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_ReferencePoint_release_handle'));
final _listofNavigineIdlReferencepointInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_ReferencePoint_insert'));
final _listofNavigineIdlReferencepointIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_ReferencePoint_iterator'));
final _listofNavigineIdlReferencepointIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_ReferencePoint_iterator_release_handle'));
final _listofNavigineIdlReferencepointIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_ReferencePoint_iterator_is_valid'));
final _listofNavigineIdlReferencepointIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_ReferencePoint_iterator_increment'));
final _listofNavigineIdlReferencepointIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_ReferencePoint_iterator_get'));

Pointer<Void> listofNavigineIdlReferencepointToFfi(List<ReferencePoint> value) {
  final _result = _listofNavigineIdlReferencepointCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlReferencepointToFfi(element);
    _listofNavigineIdlReferencepointInsert(_result, _elementHandle);
    navigineIdlReferencepointReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<ReferencePoint> listofNavigineIdlReferencepointFromFfi(Pointer<Void> handle) {
  final result = List<ReferencePoint>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlReferencepointIterator(handle);
  while (_listofNavigineIdlReferencepointIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlReferencepointIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlReferencepointFromFfi(_elementHandle));
    } finally {
      navigineIdlReferencepointReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlReferencepointIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlReferencepointIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlReferencepointReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlReferencepointReleaseHandle(handle);

final _listofNavigineIdlReferencepointCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_ReferencePoint_create_handle_nullable'));
final _listofNavigineIdlReferencepointReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_ReferencePoint_release_handle_nullable'));
final _listofNavigineIdlReferencepointGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_ReferencePoint_get_value_nullable'));

Pointer<Void> listofNavigineIdlReferencepointToFfiNullable(List<ReferencePoint>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlReferencepointToFfi(value);
  final result = _listofNavigineIdlReferencepointCreateHandleNullable(_handle);
  listofNavigineIdlReferencepointReleaseFfiHandle(_handle);
  return result;
}

List<ReferencePoint>? listofNavigineIdlReferencepointFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlReferencepointGetValueNullable(handle);
  final result = listofNavigineIdlReferencepointFromFfi(_handle);
  listofNavigineIdlReferencepointReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlReferencepointReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlReferencepointReleaseHandleNullable(handle);

final _listofNavigineIdlRouteeventCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_RouteEvent_create_handle'));
final _listofNavigineIdlRouteeventReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_RouteEvent_release_handle'));
final _listofNavigineIdlRouteeventInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_RouteEvent_insert'));
final _listofNavigineIdlRouteeventIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_RouteEvent_iterator'));
final _listofNavigineIdlRouteeventIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_RouteEvent_iterator_release_handle'));
final _listofNavigineIdlRouteeventIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_RouteEvent_iterator_is_valid'));
final _listofNavigineIdlRouteeventIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_RouteEvent_iterator_increment'));
final _listofNavigineIdlRouteeventIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_RouteEvent_iterator_get'));

Pointer<Void> listofNavigineIdlRouteeventToFfi(List<RouteEvent> value) {
  final _result = _listofNavigineIdlRouteeventCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlRouteeventToFfi(element);
    _listofNavigineIdlRouteeventInsert(_result, _elementHandle);
    navigineIdlRouteeventReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<RouteEvent> listofNavigineIdlRouteeventFromFfi(Pointer<Void> handle) {
  final result = List<RouteEvent>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlRouteeventIterator(handle);
  while (_listofNavigineIdlRouteeventIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlRouteeventIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlRouteeventFromFfi(_elementHandle));
    } finally {
      navigineIdlRouteeventReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlRouteeventIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlRouteeventIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlRouteeventReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlRouteeventReleaseHandle(handle);

final _listofNavigineIdlRouteeventCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_RouteEvent_create_handle_nullable'));
final _listofNavigineIdlRouteeventReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_RouteEvent_release_handle_nullable'));
final _listofNavigineIdlRouteeventGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_RouteEvent_get_value_nullable'));

Pointer<Void> listofNavigineIdlRouteeventToFfiNullable(List<RouteEvent>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlRouteeventToFfi(value);
  final result = _listofNavigineIdlRouteeventCreateHandleNullable(_handle);
  listofNavigineIdlRouteeventReleaseFfiHandle(_handle);
  return result;
}

List<RouteEvent>? listofNavigineIdlRouteeventFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlRouteeventGetValueNullable(handle);
  final result = listofNavigineIdlRouteeventFromFfi(_handle);
  listofNavigineIdlRouteeventReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlRouteeventReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlRouteeventReleaseHandleNullable(handle);

final _listofNavigineIdlRoutepathCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_RoutePath_create_handle'));
final _listofNavigineIdlRoutepathReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_RoutePath_release_handle'));
final _listofNavigineIdlRoutepathInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_RoutePath_insert'));
final _listofNavigineIdlRoutepathIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_RoutePath_iterator'));
final _listofNavigineIdlRoutepathIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_RoutePath_iterator_release_handle'));
final _listofNavigineIdlRoutepathIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_RoutePath_iterator_is_valid'));
final _listofNavigineIdlRoutepathIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_RoutePath_iterator_increment'));
final _listofNavigineIdlRoutepathIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_RoutePath_iterator_get'));

Pointer<Void> listofNavigineIdlRoutepathToFfi(List<RoutePath> value) {
  final _result = _listofNavigineIdlRoutepathCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlRoutepathToFfi(element);
    _listofNavigineIdlRoutepathInsert(_result, _elementHandle);
    navigineIdlRoutepathReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<RoutePath> listofNavigineIdlRoutepathFromFfi(Pointer<Void> handle) {
  final result = List<RoutePath>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlRoutepathIterator(handle);
  while (_listofNavigineIdlRoutepathIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlRoutepathIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlRoutepathFromFfi(_elementHandle));
    } finally {
      navigineIdlRoutepathReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlRoutepathIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlRoutepathIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlRoutepathReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlRoutepathReleaseHandle(handle);

final _listofNavigineIdlRoutepathCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_RoutePath_create_handle_nullable'));
final _listofNavigineIdlRoutepathReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_RoutePath_release_handle_nullable'));
final _listofNavigineIdlRoutepathGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_RoutePath_get_value_nullable'));

Pointer<Void> listofNavigineIdlRoutepathToFfiNullable(List<RoutePath>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlRoutepathToFfi(value);
  final result = _listofNavigineIdlRoutepathCreateHandleNullable(_handle);
  listofNavigineIdlRoutepathReleaseFfiHandle(_handle);
  return result;
}

List<RoutePath>? listofNavigineIdlRoutepathFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlRoutepathGetValueNullable(handle);
  final result = listofNavigineIdlRoutepathFromFfi(_handle);
  listofNavigineIdlRoutepathReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlRoutepathReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlRoutepathReleaseHandleNullable(handle);

final _listofNavigineIdlSublocationCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_Sublocation_create_handle'));
final _listofNavigineIdlSublocationReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Sublocation_release_handle'));
final _listofNavigineIdlSublocationInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Sublocation_insert'));
final _listofNavigineIdlSublocationIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Sublocation_iterator'));
final _listofNavigineIdlSublocationIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Sublocation_iterator_release_handle'));
final _listofNavigineIdlSublocationIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_Sublocation_iterator_is_valid'));
final _listofNavigineIdlSublocationIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Sublocation_iterator_increment'));
final _listofNavigineIdlSublocationIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Sublocation_iterator_get'));

Pointer<Void> listofNavigineIdlSublocationToFfi(List<Sublocation> value) {
  final _result = _listofNavigineIdlSublocationCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlSublocationToFfi(element);
    _listofNavigineIdlSublocationInsert(_result, _elementHandle);
    navigineIdlSublocationReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<Sublocation> listofNavigineIdlSublocationFromFfi(Pointer<Void> handle) {
  final result = List<Sublocation>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlSublocationIterator(handle);
  while (_listofNavigineIdlSublocationIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlSublocationIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlSublocationFromFfi(_elementHandle));
    } finally {
      navigineIdlSublocationReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlSublocationIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlSublocationIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlSublocationReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlSublocationReleaseHandle(handle);

final _listofNavigineIdlSublocationCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Sublocation_create_handle_nullable'));
final _listofNavigineIdlSublocationReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Sublocation_release_handle_nullable'));
final _listofNavigineIdlSublocationGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Sublocation_get_value_nullable'));

Pointer<Void> listofNavigineIdlSublocationToFfiNullable(List<Sublocation>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlSublocationToFfi(value);
  final result = _listofNavigineIdlSublocationCreateHandleNullable(_handle);
  listofNavigineIdlSublocationReleaseFfiHandle(_handle);
  return result;
}

List<Sublocation>? listofNavigineIdlSublocationFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlSublocationGetValueNullable(handle);
  final result = listofNavigineIdlSublocationFromFfi(_handle);
  listofNavigineIdlSublocationReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlSublocationReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlSublocationReleaseHandleNullable(handle);

final _listofNavigineIdlVenueCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_Venue_create_handle'));
final _listofNavigineIdlVenueReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Venue_release_handle'));
final _listofNavigineIdlVenueInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Venue_insert'));
final _listofNavigineIdlVenueIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Venue_iterator'));
final _listofNavigineIdlVenueIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Venue_iterator_release_handle'));
final _listofNavigineIdlVenueIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_Venue_iterator_is_valid'));
final _listofNavigineIdlVenueIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Venue_iterator_increment'));
final _listofNavigineIdlVenueIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Venue_iterator_get'));

Pointer<Void> listofNavigineIdlVenueToFfi(List<Venue> value) {
  final _result = _listofNavigineIdlVenueCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlVenueToFfi(element);
    _listofNavigineIdlVenueInsert(_result, _elementHandle);
    navigineIdlVenueReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<Venue> listofNavigineIdlVenueFromFfi(Pointer<Void> handle) {
  final result = List<Venue>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlVenueIterator(handle);
  while (_listofNavigineIdlVenueIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlVenueIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlVenueFromFfi(_elementHandle));
    } finally {
      navigineIdlVenueReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlVenueIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlVenueIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlVenueReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlVenueReleaseHandle(handle);

final _listofNavigineIdlVenueCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Venue_create_handle_nullable'));
final _listofNavigineIdlVenueReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Venue_release_handle_nullable'));
final _listofNavigineIdlVenueGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Venue_get_value_nullable'));

Pointer<Void> listofNavigineIdlVenueToFfiNullable(List<Venue>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlVenueToFfi(value);
  final result = _listofNavigineIdlVenueCreateHandleNullable(_handle);
  listofNavigineIdlVenueReleaseFfiHandle(_handle);
  return result;
}

List<Venue>? listofNavigineIdlVenueFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlVenueGetValueNullable(handle);
  final result = listofNavigineIdlVenueFromFfi(_handle);
  listofNavigineIdlVenueReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlVenueReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlVenueReleaseHandleNullable(handle);

final _listofNavigineIdlWifiCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_Wifi_create_handle'));
final _listofNavigineIdlWifiReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Wifi_release_handle'));
final _listofNavigineIdlWifiInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Wifi_insert'));
final _listofNavigineIdlWifiIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Wifi_iterator'));
final _listofNavigineIdlWifiIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Wifi_iterator_release_handle'));
final _listofNavigineIdlWifiIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_Wifi_iterator_is_valid'));
final _listofNavigineIdlWifiIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Wifi_iterator_increment'));
final _listofNavigineIdlWifiIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Wifi_iterator_get'));

Pointer<Void> listofNavigineIdlWifiToFfi(List<Wifi> value) {
  final _result = _listofNavigineIdlWifiCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlWifiToFfi(element);
    _listofNavigineIdlWifiInsert(_result, _elementHandle);
    navigineIdlWifiReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<Wifi> listofNavigineIdlWifiFromFfi(Pointer<Void> handle) {
  final result = List<Wifi>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlWifiIterator(handle);
  while (_listofNavigineIdlWifiIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlWifiIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlWifiFromFfi(_elementHandle));
    } finally {
      navigineIdlWifiReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlWifiIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlWifiIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlWifiReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlWifiReleaseHandle(handle);

final _listofNavigineIdlWifiCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Wifi_create_handle_nullable'));
final _listofNavigineIdlWifiReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Wifi_release_handle_nullable'));
final _listofNavigineIdlWifiGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Wifi_get_value_nullable'));

Pointer<Void> listofNavigineIdlWifiToFfiNullable(List<Wifi>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlWifiToFfi(value);
  final result = _listofNavigineIdlWifiCreateHandleNullable(_handle);
  listofNavigineIdlWifiReleaseFfiHandle(_handle);
  return result;
}

List<Wifi>? listofNavigineIdlWifiFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlWifiGetValueNullable(handle);
  final result = listofNavigineIdlWifiFromFfi(_handle);
  listofNavigineIdlWifiReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlWifiReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlWifiReleaseHandleNullable(handle);

final _listofNavigineIdlZoneCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_ListOf_navigine_idl_Zone_create_handle'));
final _listofNavigineIdlZoneReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Zone_release_handle'));
final _listofNavigineIdlZoneInsert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Zone_insert'));
final _listofNavigineIdlZoneIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Zone_iterator'));
final _listofNavigineIdlZoneIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Zone_iterator_release_handle'));
final _listofNavigineIdlZoneIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_ListOf_navigine_idl_Zone_iterator_is_valid'));
final _listofNavigineIdlZoneIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Zone_iterator_increment'));
final _listofNavigineIdlZoneIteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_ListOf_navigine_idl_Zone_iterator_get'));

Pointer<Void> listofNavigineIdlZoneToFfi(List<Zone> value) {
  final _result = _listofNavigineIdlZoneCreateHandle();
  for (final element in value) {
    final _elementHandle = navigineIdlZoneToFfi(element);
    _listofNavigineIdlZoneInsert(_result, _elementHandle);
    navigineIdlZoneReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<Zone> listofNavigineIdlZoneFromFfi(Pointer<Void> handle) {
  final result = List<Zone>.empty(growable: true);
  final _iteratorHandle = _listofNavigineIdlZoneIterator(handle);
  while (_listofNavigineIdlZoneIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _listofNavigineIdlZoneIteratorGet(_iteratorHandle);
    try {
      result.add(navigineIdlZoneFromFfi(_elementHandle));
    } finally {
      navigineIdlZoneReleaseFfiHandle(_elementHandle);
    }
    _listofNavigineIdlZoneIteratorIncrement(_iteratorHandle);
  }
  _listofNavigineIdlZoneIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void listofNavigineIdlZoneReleaseFfiHandle(Pointer<Void> handle) => _listofNavigineIdlZoneReleaseHandle(handle);

final _listofNavigineIdlZoneCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Zone_create_handle_nullable'));
final _listofNavigineIdlZoneReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Zone_release_handle_nullable'));
final _listofNavigineIdlZoneGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_ListOf_navigine_idl_Zone_get_value_nullable'));

Pointer<Void> listofNavigineIdlZoneToFfiNullable(List<Zone>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = listofNavigineIdlZoneToFfi(value);
  final result = _listofNavigineIdlZoneCreateHandleNullable(_handle);
  listofNavigineIdlZoneReleaseFfiHandle(_handle);
  return result;
}

List<Zone>? listofNavigineIdlZoneFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _listofNavigineIdlZoneGetValueNullable(handle);
  final result = listofNavigineIdlZoneFromFfi(_handle);
  listofNavigineIdlZoneReleaseFfiHandle(_handle);
  return result;
}

void listofNavigineIdlZoneReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _listofNavigineIdlZoneReleaseHandleNullable(handle);

final _mapofIntToNavigineIdlLocationinfoCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_MapOf_Int_to_navigine_idl_LocationInfo_create_handle'));
final _mapofIntToNavigineIdlLocationinfoReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_MapOf_Int_to_navigine_idl_LocationInfo_release_handle'));
final _mapofIntToNavigineIdlLocationinfoPut = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Pointer<Void>),
    void Function(Pointer<Void>, int, Pointer<Void>)
  >('navigine_MapOf_Int_to_navigine_idl_LocationInfo_put'));
final _mapofIntToNavigineIdlLocationinfoIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_MapOf_Int_to_navigine_idl_LocationInfo_iterator'));
final _mapofIntToNavigineIdlLocationinfoIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_MapOf_Int_to_navigine_idl_LocationInfo_iterator_release_handle'));
final _mapofIntToNavigineIdlLocationinfoIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_MapOf_Int_to_navigine_idl_LocationInfo_iterator_is_valid'));
final _mapofIntToNavigineIdlLocationinfoIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_MapOf_Int_to_navigine_idl_LocationInfo_iterator_increment'));
final _mapofIntToNavigineIdlLocationinfoIteratorGetKey = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
>('navigine_MapOf_Int_to_navigine_idl_LocationInfo_iterator_get_key'));
final _mapofIntToNavigineIdlLocationinfoIteratorGetValue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_MapOf_Int_to_navigine_idl_LocationInfo_iterator_get_value'));

Pointer<Void> mapofIntToNavigineIdlLocationinfoToFfi(Map<int, LocationInfo> value) {
  final _result = _mapofIntToNavigineIdlLocationinfoCreateHandle();
  for (final entry in value.entries) {
    final _keyHandle = (entry.key);
    final _valueHandle = navigineIdlLocationinfoToFfi(entry.value);
    _mapofIntToNavigineIdlLocationinfoPut(_result, _keyHandle, _valueHandle);

    navigineIdlLocationinfoReleaseFfiHandle(_valueHandle);
  }
  return _result;
}

Map<int, LocationInfo> mapofIntToNavigineIdlLocationinfoFromFfi(Pointer<Void> handle) {
  final result = Map<int, LocationInfo>();
  final _iteratorHandle = _mapofIntToNavigineIdlLocationinfoIterator(handle);
  while (_mapofIntToNavigineIdlLocationinfoIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _keyHandle = _mapofIntToNavigineIdlLocationinfoIteratorGetKey(_iteratorHandle);
    final _valueHandle = _mapofIntToNavigineIdlLocationinfoIteratorGetValue(_iteratorHandle);
    try {
      result[(_keyHandle)] =
        navigineIdlLocationinfoFromFfi(_valueHandle);
    } finally {

      navigineIdlLocationinfoReleaseFfiHandle(_valueHandle);
    }
    _mapofIntToNavigineIdlLocationinfoIteratorIncrement(_iteratorHandle);
  }
  _mapofIntToNavigineIdlLocationinfoIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void mapofIntToNavigineIdlLocationinfoReleaseFfiHandle(Pointer<Void> handle) => _mapofIntToNavigineIdlLocationinfoReleaseHandle(handle);

final _mapofIntToNavigineIdlLocationinfoCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_MapOf_Int_to_navigine_idl_LocationInfo_create_handle_nullable'));
final _mapofIntToNavigineIdlLocationinfoReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_MapOf_Int_to_navigine_idl_LocationInfo_release_handle_nullable'));
final _mapofIntToNavigineIdlLocationinfoGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_MapOf_Int_to_navigine_idl_LocationInfo_get_value_nullable'));

Pointer<Void> mapofIntToNavigineIdlLocationinfoToFfiNullable(Map<int, LocationInfo>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = mapofIntToNavigineIdlLocationinfoToFfi(value);
  final result = _mapofIntToNavigineIdlLocationinfoCreateHandleNullable(_handle);
  mapofIntToNavigineIdlLocationinfoReleaseFfiHandle(_handle);
  return result;
}

Map<int, LocationInfo>? mapofIntToNavigineIdlLocationinfoFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _mapofIntToNavigineIdlLocationinfoGetValueNullable(handle);
  final result = mapofIntToNavigineIdlLocationinfoFromFfi(_handle);
  mapofIntToNavigineIdlLocationinfoReleaseFfiHandle(_handle);
  return result;
}

void mapofIntToNavigineIdlLocationinfoReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _mapofIntToNavigineIdlLocationinfoReleaseHandleNullable(handle);

final _mapofStringToStringCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_MapOf_String_to_String_create_handle'));
final _mapofStringToStringReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_MapOf_String_to_String_release_handle'));
final _mapofStringToStringPut = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('navigine_MapOf_String_to_String_put'));
final _mapofStringToStringIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_MapOf_String_to_String_iterator'));
final _mapofStringToStringIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_MapOf_String_to_String_iterator_release_handle'));
final _mapofStringToStringIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_MapOf_String_to_String_iterator_is_valid'));
final _mapofStringToStringIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_MapOf_String_to_String_iterator_increment'));
final _mapofStringToStringIteratorGetKey = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_MapOf_String_to_String_iterator_get_key'));
final _mapofStringToStringIteratorGetValue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_MapOf_String_to_String_iterator_get_value'));

Pointer<Void> mapofStringToStringToFfi(Map<String, String> value) {
  final _result = _mapofStringToStringCreateHandle();
  for (final entry in value.entries) {
    final _keyHandle = stringToFfi(entry.key);
    final _valueHandle = stringToFfi(entry.value);
    _mapofStringToStringPut(_result, _keyHandle, _valueHandle);
    stringReleaseFfiHandle(_keyHandle);
    stringReleaseFfiHandle(_valueHandle);
  }
  return _result;
}

Map<String, String> mapofStringToStringFromFfi(Pointer<Void> handle) {
  final result = Map<String, String>();
  final _iteratorHandle = _mapofStringToStringIterator(handle);
  while (_mapofStringToStringIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _keyHandle = _mapofStringToStringIteratorGetKey(_iteratorHandle);
    final _valueHandle = _mapofStringToStringIteratorGetValue(_iteratorHandle);
    try {
      result[stringFromFfi(_keyHandle)] =
        stringFromFfi(_valueHandle);
    } finally {
      stringReleaseFfiHandle(_keyHandle);
      stringReleaseFfiHandle(_valueHandle);
    }
    _mapofStringToStringIteratorIncrement(_iteratorHandle);
  }
  _mapofStringToStringIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void mapofStringToStringReleaseFfiHandle(Pointer<Void> handle) => _mapofStringToStringReleaseHandle(handle);

final _mapofStringToStringCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_MapOf_String_to_String_create_handle_nullable'));
final _mapofStringToStringReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_MapOf_String_to_String_release_handle_nullable'));
final _mapofStringToStringGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_MapOf_String_to_String_get_value_nullable'));

Pointer<Void> mapofStringToStringToFfiNullable(Map<String, String>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = mapofStringToStringToFfi(value);
  final result = _mapofStringToStringCreateHandleNullable(_handle);
  mapofStringToStringReleaseFfiHandle(_handle);
  return result;
}

Map<String, String>? mapofStringToStringFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _mapofStringToStringGetValueNullable(handle);
  final result = mapofStringToStringFromFfi(_handle);
  mapofStringToStringReleaseFfiHandle(_handle);
  return result;
}

void mapofStringToStringReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _mapofStringToStringReleaseHandleNullable(handle);

final _mapofStringToNavigineIdlSignalmeasurementCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_create_handle'));
final _mapofStringToNavigineIdlSignalmeasurementReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_release_handle'));
final _mapofStringToNavigineIdlSignalmeasurementPut = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_put'));
final _mapofStringToNavigineIdlSignalmeasurementIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_iterator'));
final _mapofStringToNavigineIdlSignalmeasurementIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_iterator_release_handle'));
final _mapofStringToNavigineIdlSignalmeasurementIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_iterator_is_valid'));
final _mapofStringToNavigineIdlSignalmeasurementIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_iterator_increment'));
final _mapofStringToNavigineIdlSignalmeasurementIteratorGetKey = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_iterator_get_key'));
final _mapofStringToNavigineIdlSignalmeasurementIteratorGetValue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_iterator_get_value'));

Pointer<Void> mapofStringToNavigineIdlSignalmeasurementToFfi(Map<String, SignalMeasurement> value) {
  final _result = _mapofStringToNavigineIdlSignalmeasurementCreateHandle();
  for (final entry in value.entries) {
    final _keyHandle = stringToFfi(entry.key);
    final _valueHandle = navigineIdlSignalmeasurementToFfi(entry.value);
    _mapofStringToNavigineIdlSignalmeasurementPut(_result, _keyHandle, _valueHandle);
    stringReleaseFfiHandle(_keyHandle);
    navigineIdlSignalmeasurementReleaseFfiHandle(_valueHandle);
  }
  return _result;
}

Map<String, SignalMeasurement> mapofStringToNavigineIdlSignalmeasurementFromFfi(Pointer<Void> handle) {
  final result = Map<String, SignalMeasurement>();
  final _iteratorHandle = _mapofStringToNavigineIdlSignalmeasurementIterator(handle);
  while (_mapofStringToNavigineIdlSignalmeasurementIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _keyHandle = _mapofStringToNavigineIdlSignalmeasurementIteratorGetKey(_iteratorHandle);
    final _valueHandle = _mapofStringToNavigineIdlSignalmeasurementIteratorGetValue(_iteratorHandle);
    try {
      result[stringFromFfi(_keyHandle)] =
        navigineIdlSignalmeasurementFromFfi(_valueHandle);
    } finally {
      stringReleaseFfiHandle(_keyHandle);
      navigineIdlSignalmeasurementReleaseFfiHandle(_valueHandle);
    }
    _mapofStringToNavigineIdlSignalmeasurementIteratorIncrement(_iteratorHandle);
  }
  _mapofStringToNavigineIdlSignalmeasurementIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void mapofStringToNavigineIdlSignalmeasurementReleaseFfiHandle(Pointer<Void> handle) => _mapofStringToNavigineIdlSignalmeasurementReleaseHandle(handle);

final _mapofStringToNavigineIdlSignalmeasurementCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_create_handle_nullable'));
final _mapofStringToNavigineIdlSignalmeasurementReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_release_handle_nullable'));
final _mapofStringToNavigineIdlSignalmeasurementGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_MapOf_String_to_navigine_idl_SignalMeasurement_get_value_nullable'));

Pointer<Void> mapofStringToNavigineIdlSignalmeasurementToFfiNullable(Map<String, SignalMeasurement>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = mapofStringToNavigineIdlSignalmeasurementToFfi(value);
  final result = _mapofStringToNavigineIdlSignalmeasurementCreateHandleNullable(_handle);
  mapofStringToNavigineIdlSignalmeasurementReleaseFfiHandle(_handle);
  return result;
}

Map<String, SignalMeasurement>? mapofStringToNavigineIdlSignalmeasurementFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _mapofStringToNavigineIdlSignalmeasurementGetValueNullable(handle);
  final result = mapofStringToNavigineIdlSignalmeasurementFromFfi(_handle);
  mapofStringToNavigineIdlSignalmeasurementReleaseFfiHandle(_handle);
  return result;
}

void mapofStringToNavigineIdlSignalmeasurementReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _mapofStringToNavigineIdlSignalmeasurementReleaseHandleNullable(handle);

final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_create_handle'));
final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_release_handle'));
final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementPut = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Uint32, Pointer<Void>),
    void Function(Pointer<Void>, int, Pointer<Void>)
  >('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_put'));
final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_iterator'));
final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_iterator_release_handle'));
final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_iterator_is_valid'));
final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_iterator_increment'));
final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIteratorGetKey = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
>('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_iterator_get_key'));
final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIteratorGetValue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_iterator_get_value'));

Pointer<Void> mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementToFfi(Map<SensorType, SensorMeasurement> value) {
  final _result = _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementCreateHandle();
  for (final entry in value.entries) {
    final _keyHandle = navigineIdlSensortypeToFfi(entry.key);
    final _valueHandle = navigineIdlSensormeasurementToFfi(entry.value);
    _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementPut(_result, _keyHandle, _valueHandle);
    navigineIdlSensortypeReleaseFfiHandle(_keyHandle);
    navigineIdlSensormeasurementReleaseFfiHandle(_valueHandle);
  }
  return _result;
}

Map<SensorType, SensorMeasurement> mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementFromFfi(Pointer<Void> handle) {
  final result = Map<SensorType, SensorMeasurement>();
  final _iteratorHandle = _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIterator(handle);
  while (_mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIteratorIsValid(handle, _iteratorHandle) != 0) {
    final _keyHandle = _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIteratorGetKey(_iteratorHandle);
    final _valueHandle = _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIteratorGetValue(_iteratorHandle);
    try {
      result[navigineIdlSensortypeFromFfi(_keyHandle)] =
        navigineIdlSensormeasurementFromFfi(_valueHandle);
    } finally {
      navigineIdlSensortypeReleaseFfiHandle(_keyHandle);
      navigineIdlSensormeasurementReleaseFfiHandle(_valueHandle);
    }
    _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIteratorIncrement(_iteratorHandle);
  }
  _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementIteratorReleaseHandle(_iteratorHandle);
  return result;
}

void mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementReleaseFfiHandle(Pointer<Void> handle) => _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementReleaseHandle(handle);

final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_create_handle_nullable'));
final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_release_handle_nullable'));
final _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_MapOf_navigine_idl_SensorType_to_navigine_idl_SensorMeasurement_get_value_nullable'));

Pointer<Void> mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementToFfiNullable(Map<SensorType, SensorMeasurement>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementToFfi(value);
  final result = _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementCreateHandleNullable(_handle);
  mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementReleaseFfiHandle(_handle);
  return result;
}

Map<SensorType, SensorMeasurement>? mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementGetValueNullable(handle);
  final result = mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementFromFfi(_handle);
  mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementReleaseFfiHandle(_handle);
  return result;
}

void mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _mapofNavigineIdlSensortypeToNavigineIdlSensormeasurementReleaseHandleNullable(handle);
