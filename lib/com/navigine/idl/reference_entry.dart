import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_entry_type.dart';

part 'reference_entry.impl.dart';
/**
 * @file com/navigine/idl/reference_entry.dart
 * @brief @copybrief ReferenceEntry
 */
abstract class ReferenceEntry implements Finalizable {


    ReferenceEntryType get type;
    String get bssid;
    String get value;


}
