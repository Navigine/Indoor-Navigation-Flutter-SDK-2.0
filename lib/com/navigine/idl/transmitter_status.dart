import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'transmitter_status.impl.dart';
/// enum described possible transmitter state.
/// Referenced from [Beacon], [Eddystone], [Wifi].
///
/// Example:
/// ```dart
/// // Get all transmitter status values
/// print('Available transmitter statuses:');
/// print('  - TransmitterStatus.active: ${TransmitterStatus.active}');
/// print('  - TransmitterStatus.inactive: ${TransmitterStatus.inactive}');
/// ```
enum TransmitterStatus {
    /// Synchronized with CMS.
    NONE,
    /// Added in SDK but not synchronized with CMS.
    NEW,
    /// Deleted in SDK but not synchronized with CMS.
    DELETED,
    /// Changed in SDK but not synchronized with CMS.
    MODIFIED,
}
