import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/location.dart';
import 'package:navigine_sdk/error.dart';

part 'location_edit_listener.impl.dart';
/**
 * @file com/navigine/idl/location_edit_listener.dart
 * @brief @copybrief LocationEditListener
 */
abstract class LocationEditListener {

    void onLocationEditSuccess(Location location);

    void onLocationEditError(Error error);



}
