import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/position_listener.dart';

part 'navigation_manager.impl.dart';
/**
 * @file com/navigine/idl/navigation_manager.dart
 * @brief @copybrief NavigationManager
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Class is used for evaluating navigation and calculating users' @see Position "Position"
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 */
abstract class NavigationManager implements Finalizable {

    /**
     *
     * @brief Method is used to add @see PositionListener "PositionListener" class element
     * which will notify about new user position.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Сorresponding @see PositionListener "PositionListener" class.
     *
     */
    void addPositionListener(PositionListener listener);

    /**
     * @cond
     */
    void startLogRecording();

    void addCheckPoint(LocationPoint point);

    void stopLogRecording();

    void addLocationMeasurement(GlobalPoint point, double accuracy, String provider);

    /**
     * @endcond
     *
     * @brief Method is used for removing previously added @see PositionListener "PositionListener" class element.
     * @param listener Сorresponding @see PositionListener "PositionListener" class to remove.
     *
     */
    void removePositionListener(PositionListener listener);



}
