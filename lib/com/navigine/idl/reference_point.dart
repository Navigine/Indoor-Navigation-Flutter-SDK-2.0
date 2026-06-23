import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_entry.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'reference_point.impl.dart';
abstract class ReferencePoint implements Finalizable {


    bool isValid();

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
