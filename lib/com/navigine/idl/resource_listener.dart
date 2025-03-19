import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/image.dart';
import 'package:navigine_sdk/error.dart';

part 'resource_listener.impl.dart';
/**
 * @file com/navigine/idl/resource_listener.dart
 * @brief @copybrief ResourceListener
 */
abstract class ResourceListener {

    void onLoaded(String imageUrl, Image image);

    void onFailed(String imageUrl, Error error);



}
