import 'dart:ffi';
import 'dart:ui';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/placement.dart';
import 'package:navigine_sdk/com/navigine/idl/route_endpoint.dart';
import 'package:navigine_sdk/com/navigine/idl/route_layer_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/route_remaining_style.dart';
import 'package:navigine_sdk/com/navigine/idl/route_view.dart';
import 'package:navigine_sdk/com/navigine/idl/route_view_listener.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'route_layer.impl.dart';
/// Layer that renders a route on the map as traveled and remaining polylines.
/// Independent from [UserLocationLayer]: a route can be shown
/// without a user marker, and a user marker can be shown without a route.
/// Location and position are taken from the SDK automatically (same pattern as
/// [UserLocationLayer]).
/// Referenced from [NavigineSdk].
abstract class RouteLayer implements Finalizable {

    /// Shows or hides the route layer.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setVisible(true);
    /// print("Route layer set visible");
    /// ```
    void setVisible(bool visible);

    /// Returns true if the route layer is visible.
    ///
    /// Example:
    /// ```dart
    /// bool visible = _routeLayer!.isVisible();
    /// print("Route layer is visible: $visible");
    /// ```
    bool isVisible();

    /// Starts turn-by-turn guidance to the target from the current position.
    /// [target] Destination endpoint. Route and progress are updated automatically.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setTarget(to);
    /// print("Guidance target applied");
    /// ```
    void setTarget(RouteEndpoint target);

    /// Builds and shows a static route between two points (no live guidance).
    /// [from] Route start endpoint.
    /// [to] Route finish endpoint.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setRoute(from, to);
    /// print("Static route applied");
    /// ```
    void setRoute(RouteEndpoint from, RouteEndpoint to);

    /// Cancels guidance / static route and removes polylines from the map.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.clear();
    /// print("Route layer cleared");
    /// ```
    void clear();

    /// Returns currently rendered routes. V1 exposes a single active route.
    ///
    /// Example:
    /// ```dart
    /// final routes = _routeLayer!.routes();
    /// print("Visible routes: ${routes.length}");
    /// ```
    List<RouteView> routes();

    /// Returns selected route view, or null when no route is selected.
    ///
    /// Example:
    /// ```dart
    /// final selectedRoute = _routeLayer!.selectedRoute();
    /// if (selectedRoute != null) {
    ///  print("Selected route length: ${selectedRoute.length()}");
    /// }
    /// ```
    RouteView? selectedRoute();

    /// Selects the provided route view. Pass null to clear selection.
    /// [route] Route view from [routes], or null.
    ///
    /// Example:
    /// ```dart
    /// if (routes.isNotEmpty) {
    ///  _routeLayer!.selectRoute(routes.first);
    /// }
    /// ```
    void selectRoute(RouteView? route);

    /// Adds listener for route lifecycle, progress and target reach events.
    ///
    /// Example:
    /// ```dart
    /// _routeLayerListener = DemoRouteLayerListener();
    /// _routeLayer!.addRouteLayerListener(_routeLayerListener!);
    /// ```
    void addRouteLayerListener(RouteLayerListener listener);

    /// Removes previously added route layer listener.
    void removeRouteLayerListener(RouteLayerListener listener);

    /// Adds listener for route view list, selection and tap events.
    ///
    /// Example:
    /// ```dart
    /// _routeViewListener = DemoRouteViewListener(_routeLayer!);
    /// _routeLayer!.addRouteViewListener(_routeViewListener!);
    /// ```
    void addRouteViewListener(RouteViewListener listener);

    /// Removes previously added route view listener.
    void removeRouteViewListener(RouteViewListener listener);

    /// Sets traveled (passed) route polyline color.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setTraveledColor(const Color(0xB4787878));
    /// print("Traveled color updated");
    /// ```
    void setTraveledColor(Color color);

    /// Sets remaining route polyline color.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setRemainingColor(const Color(0xFF30AAD9));
    /// print("Remaining color updated");
    /// ```
    void setRemainingColor(Color color);

    /// Sets route polyline width in pixels (also used as default dotted point size).
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setWidth(8.0);
    /// print("Route width updated");
    /// ```
    void setWidth(double width);

    /// Sets rendering style for the remaining route.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setRemainingStyle(RouteRemainingStyle.DOTTED);
    /// print("Remaining style set to DOTTED");
    /// ```
    void setRemainingStyle(RouteRemainingStyle style);

    /// Returns the remaining route rendering style.
    ///
    /// Example:
    /// ```dart
    /// RouteRemainingStyle remainingStyle = _routeLayer!.remainingStyle();
    /// print("Remaining style: $remainingStyle");
    /// ```
    RouteRemainingStyle remainingStyle();

    /// Sets dash length for DASHED remaining style. Use 0 to disable dashing.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setRemainingDashLength(0.5);
    /// print("Remaining dash length updated");
    /// ```
    void setRemainingDashLength(double dashLength);

    /// Sets gap length for DASHED remaining style. Use 0 to disable dashing.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setRemainingGapLength(0.4);
    /// print("Remaining gap length updated");
    /// ```
    void setRemainingGapLength(double gapLength);

    /// Sets point size for DOTTED remaining style.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setRemainingPointSize(8.0, 8.0);
    /// print("Remaining point size updated");
    /// ```
    void setRemainingPointSize(double width, double height);

    /// Sets point placement mode for DOTTED remaining style.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setRemainingPlacement(Placement.SPACED);
    /// print("Remaining placement updated");
    /// ```
    void setRemainingPlacement(Placement placement);

    /// Sets spacing between points for DOTTED + SPACED placement (pixels).
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setRemainingPlacementSpacing(8.0);
    /// print("Remaining placement spacing updated");
    /// ```
    void setRemainingPlacementSpacing(double spacing);

    /// Sets minimum polyline length ratio for DOTTED placement.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setRemainingPlacementMinRatio(0.0);
    /// print("Remaining placement min ratio updated");
    /// ```
    void setRemainingPlacementMinRatio(double ratio);

    /// Enables or disables collision for DOTTED remaining points.
    ///
    /// Example:
    /// ```dart
    /// _routeLayer!.setRemainingCollisionEnabled(false);
    /// print("Remaining collision disabled");
    /// ```
    void setRemainingCollisionEnabled(bool enabled);

    bool isValid();



}
