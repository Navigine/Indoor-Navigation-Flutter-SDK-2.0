import 'package:navigine_sdk/com/navigine/idl/async_route_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/async_route_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_estimator.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_estimator_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/circle_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/eddystone.dart';
import 'package:navigine_sdk/com/navigine/idl/flat_icon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/graph.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_vertex.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/input_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/location.dart';
import 'package:navigine_sdk/com/navigine/idl/location_edit_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/location_edit_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/location_list_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/location_list_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/location_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/location_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/location_window.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_pick_result.dart';
import 'package:navigine_sdk/com/navigine/idl/measurement_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/measurement_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/navigation_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/navigine_sdk.dart';
import 'package:navigine_sdk/com/navigine/idl/notification.dart';
import 'package:navigine_sdk/com/navigine/idl/notification_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/notification_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/pick_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/polyline_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/position_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_entry.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_point.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_upload_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/route_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/route_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';
import 'package:navigine_sdk/com/navigine/idl/route_session.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart';
import 'package:navigine_sdk/com/navigine/idl/venue.dart';
import 'package:navigine_sdk/com/navigine/idl/wifi.dart';
import 'package:navigine_sdk/com/navigine/idl/zone.dart';
import 'package:navigine_sdk/com/navigine/idl/zone_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/zone_manager.dart';

final Map<String, Function> typeRepository = {
  // "navigine_idl_AsyncRouteListener": (handle) => AsyncRouteListener$Impl(handle),

  "navigine_idl_AsyncRouteManager": (handle) => AsyncRouteManager$Impl(handle),

  "navigine_idl_Beacon": (handle) => Beacon$Impl(handle),

  "navigine_idl_BeaconProximityEstimator": (handle) => BeaconProximityEstimator$Impl(handle),

  // "navigine_idl_BeaconProximityEstimatorListener": (handle) => BeaconProximityEstimatorListener$Impl(handle),

  // "navigine_idl_CameraListener": (handle) => CameraListener$Impl(handle),

  "navigine_idl_CircleMapObject": (handle) => CircleMapObject$Impl(handle),

  "navigine_idl_Eddystone": (handle) => Eddystone$Impl(handle),

  "navigine_idl_FlatIconMapObject": (handle) => FlatIconMapObject$Impl(handle),

  "navigine_idl_Graph": (handle) => Graph$Impl(handle),

  "navigine_idl_GraphEdge": (handle) => GraphEdge$Impl(handle),

  "navigine_idl_GraphVertex": (handle) => GraphVertex$Impl(handle),

  "navigine_idl_IconMapObject": (handle) => IconMapObject$Impl(handle),

  // "navigine_idl_InputListener": (handle) => InputListener$Impl(handle),

  "navigine_idl_Location": (handle) => Location$Impl(handle),

  // "navigine_idl_LocationEditListener": (handle) => LocationEditListener$Impl(handle),

  "navigine_idl_LocationEditManager": (handle) => LocationEditManager$Impl(handle),

  // "navigine_idl_LocationListListener": (handle) => LocationListListener$Impl(handle),

  "navigine_idl_LocationListManager": (handle) => LocationListManager$Impl(handle),

  // "navigine_idl_LocationListener": (handle) => LocationListener$Impl(handle),

  "navigine_idl_LocationManager": (handle) => LocationManager$Impl(handle),

  "navigine_idl_LocationWindow": (handle) => LocationWindow$Impl(handle),

  "navigine_idl_MapObject": (handle) => MapObject$Impl(handle),

  "navigine_idl_MapObjectPickResult": (handle) => MapObjectPickResult$Impl(handle),

  // "navigine_idl_MeasurementListener": (handle) => MeasurementListener$Impl(handle),

  "navigine_idl_MeasurementManager": (handle) => MeasurementManager$Impl(handle),

  "navigine_idl_NavigationManager": (handle) => NavigationManager$Impl(handle),

  "navigine_idl_NavigineSdk": (handle) => NavigineSdk$Impl(handle),

  "navigine_idl_Notification": (handle) => Notification$Impl(handle),

  // "navigine_idl_NotificationListener": (handle) => NotificationListener$Impl(handle),

  "navigine_idl_NotificationManager": (handle) => NotificationManager$Impl(handle),

  // "navigine_idl_PickListener": (handle) => PickListener$Impl(handle),

  "navigine_idl_PolylineMapObject": (handle) => PolylineMapObject$Impl(handle),

  // "navigine_idl_PositionListener": (handle) => PositionListener$Impl(handle),

  "navigine_idl_ReferenceEntry": (handle) => ReferenceEntry$Impl(handle),

  "navigine_idl_ReferencePoint": (handle) => ReferencePoint$Impl(handle),

  // "navigine_idl_ResourceListener": (handle) => ResourceListener$Impl(handle),

  "navigine_idl_ResourceManager": (handle) => ResourceManager$Impl(handle),

  // "navigine_idl_ResourceUploadListener": (handle) => ResourceUploadListener$Impl(handle),

  // "navigine_idl_RouteListener": (handle) => RouteListener$Impl(handle),

  "navigine_idl_RouteManager": (handle) => RouteManager$Impl(handle),

  "navigine_idl_RoutePath": (handle) => RoutePath$Impl(handle),

  "navigine_idl_RouteSession": (handle) => RouteSession$Impl(handle),

  "navigine_idl_Sublocation": (handle) => Sublocation$Impl(handle),

  "navigine_idl_Venue": (handle) => Venue$Impl(handle),

  "navigine_idl_Wifi": (handle) => Wifi$Impl(handle),

  "navigine_idl_Zone": (handle) => Zone$Impl(handle),

  // "navigine_idl_ZoneListener": (handle) => ZoneListener$Impl(handle),

  "navigine_idl_ZoneManager": (handle) => ZoneManager$Impl(handle),
 };
