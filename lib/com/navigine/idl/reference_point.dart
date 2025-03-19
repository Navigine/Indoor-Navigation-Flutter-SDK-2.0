import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_entry.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';

part 'reference_point.impl.dart';
/**
 * @file com/navigine/idl/reference_point.dart
 * @brief @copybrief ReferencePoint
 */
abstract class ReferencePoint implements Finalizable {


    int get locationId;
    int get sublocationId;
    String get name;
    String get uuid;
    Point get point;
    int get quality;
    int get duration;
    String get deviceId;
    String get deviceModel;
    String get timeLabel;
    List<ReferenceEntry> get entries;
    TransmitterStatus get status;


}
