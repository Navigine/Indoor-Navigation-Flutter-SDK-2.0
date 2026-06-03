import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/position_listener.dart';

part 'navigation_manager.impl.dart';
/// Class is used for evaluating navigation and calculating users' [Position]
/// Referenced from [NavigineSdk].
abstract class NavigationManager implements Finalizable {

    /// Method is used to add [PositionListener] class element
    /// which will notify about new user position.
    /// **Note:** Do not forget to remove listener if it is no longer needed!
    /// [listener] Corresponding [PositionListener] class.
    ///
    /// Example:
    /// ```dart
    /// // Add position listener
    /// _navigationManager!.addPositionListener(_positionListener!);
    /// ```
    void addPositionListener(PositionListener listener);

    void startLogRecording();

    void addCheckPoint(LocationPoint point);

    void stopLogRecording();

    void addLocationMeasurement(GlobalPoint point, double accuracy, String provider);

    /// Method is used for removing previously added [PositionListener] class element.
    /// [listener] Corresponding [PositionListener] class to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove position listener
    /// _navigationManager!.removePositionListener(_positionListener!);
    /// ```
    void removePositionListener(PositionListener listener);



}
