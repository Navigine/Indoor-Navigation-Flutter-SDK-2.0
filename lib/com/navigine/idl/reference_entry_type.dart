import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'reference_entry_type.impl.dart';
enum ReferenceEntryType {
    BEACON,
    WIFI,
    BLE,
    EDDYSTONE,
    MAGNET,
}
