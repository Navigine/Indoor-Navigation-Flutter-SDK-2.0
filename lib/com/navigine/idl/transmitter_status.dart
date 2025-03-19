import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'transmitter_status.impl.dart';
/**
 * @file com/navigine/idl/transmitter_status.dart
 * @brief @copybrief TransmitterStatus
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief enum described possible transmitter state.
 *
 * Referenced from @see Beacon "Beacon", @see Eddystone "Eddystone", @see Wifi "Wifi".
 *
 */
enum TransmitterStatus {
    /**
     * @brief Syncronized with CMS.
     */
    NONE,
    /**
     * @brief Added in SDK but not syncronized with CMS.
     */
    NEW,
    /**
     * @brief Deleted in SDK but not syncronized with CMS.
     */
    DELETED,
    /**
     * @brief Changed in SDK but not syncronized with CMS.
     */
    MODIFIED,
}
