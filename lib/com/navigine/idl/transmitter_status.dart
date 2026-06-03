import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

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
    /// Syncronized with CMS.
    NONE,
    /// Added in SDK but not syncronized with CMS.
    NEW,
    /// Deleted in SDK but not syncronized with CMS.
    DELETED,
    /// Changed in SDK but not syncronized with CMS.
    MODIFIED,
}
