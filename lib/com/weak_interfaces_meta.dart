import 'dart:ffi';

import 'package:navigine_sdk/com/navigine/idl/logger.dart' show Logger$Impl;
import 'package:navigine_sdk/com/navigine/idl/model_map_object.dart' show ModelMapObject$Impl;
import 'package:navigine_sdk/com/navigine/idl/user_location_layer.dart' show UserLocationLayer$Impl;
import 'package:navigine_sdk/com/navigine/idl/building.dart' show Building$Impl;
import 'package:navigine_sdk/com/navigine/idl/polygon_map_object.dart' show PolygonMapObject$Impl;
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object.dart' show ClusterMapObject$Impl;
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object_controller.dart' show ClusterMapObjectController$Impl;
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart' show IconMapObject$Impl;
import 'package:navigine_sdk/com/navigine/idl/circle_map_object.dart' show CircleMapObject$Impl;
import 'package:navigine_sdk/com/navigine/idl/polyline_map_object.dart' show PolylineMapObject$Impl;
import 'package:navigine_sdk/com/navigine/idl/map_object.dart' show MapObject$Impl;
import 'package:navigine_sdk/com/navigine/idl/dotted_polyline_map_object.dart' show DottedPolylineMapObject$Impl;
import 'package:navigine_sdk/com/navigine/idl/location_window.dart' show LocationWindow$Impl;
import 'package:navigine_sdk/com/navigine/idl/navigine_sdk.dart' show NavigineSdk$Impl;
import 'package:navigine_sdk/com/navigine/idl/route_session.dart' show RouteSession$Impl;
import 'package:navigine_sdk/com/navigine/idl/image.dart' show Image$Impl;
import 'package:navigine_sdk/com/navigine/idl/bitmap_region_decoder.dart' show BitmapRegionDecoder$Impl;
import 'package:navigine_sdk/com/navigine/idl/geometry_utils.dart' show GeometryUtils$Impl;
import 'package:navigine_sdk/com/navigine/idl/notification.dart' show Notification$Impl;
import 'package:navigine_sdk/com/navigine/idl/wifi.dart' show Wifi$Impl;
import 'package:navigine_sdk/com/navigine/idl/zone.dart' show Zone$Impl;
import 'package:navigine_sdk/com/navigine/idl/venue.dart' show Venue$Impl;
import 'package:navigine_sdk/com/navigine/idl/reference_entry.dart' show ReferenceEntry$Impl;
import 'package:navigine_sdk/com/navigine/idl/reference_point.dart' show ReferencePoint$Impl;
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart' show Sublocation$Impl;
import 'package:navigine_sdk/com/navigine/idl/location.dart' show Location$Impl;
import 'package:navigine_sdk/com/navigine/idl/graph.dart' show Graph$Impl;
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart' show GraphEdge$Impl;
import 'package:navigine_sdk/com/navigine/idl/graph_vertex.dart' show GraphVertex$Impl;
import 'package:navigine_sdk/com/navigine/idl/elevation_graph.dart' show ElevationGraph$Impl;
import 'package:navigine_sdk/com/navigine/idl/eddystone.dart' show Eddystone$Impl;
import 'package:navigine_sdk/com/navigine/idl/beacon.dart' show Beacon$Impl;

final weakInterfacesMeta = <String, dynamic Function(Pointer<Void>)>{
  'navigine_sdk.Logger': Logger$Impl.fromNativePtrImpl,
  'navigine_sdk.ModelMapObject': ModelMapObject$Impl.fromNativePtrImpl,
  'navigine_sdk.UserLocationLayer': UserLocationLayer$Impl.fromNativePtrImpl,
  'navigine_sdk.Building': Building$Impl.fromNativePtrImpl,
  'navigine_sdk.PolygonMapObject': PolygonMapObject$Impl.fromNativePtrImpl,
  'navigine_sdk.ClusterMapObject': ClusterMapObject$Impl.fromNativePtrImpl,
  'navigine_sdk.ClusterMapObjectController': ClusterMapObjectController$Impl.fromNativePtrImpl,
  'navigine_sdk.IconMapObject': IconMapObject$Impl.fromNativePtrImpl,
  'navigine_sdk.CircleMapObject': CircleMapObject$Impl.fromNativePtrImpl,
  'navigine_sdk.PolylineMapObject': PolylineMapObject$Impl.fromNativePtrImpl,
  'navigine_sdk.MapObject': MapObject$Impl.fromNativePtrImpl,
  'navigine_sdk.DottedPolylineMapObject': DottedPolylineMapObject$Impl.fromNativePtrImpl,
  'navigine_sdk.LocationWindow': LocationWindow$Impl.fromNativePtrImpl,
  'navigine_sdk.NavigineSdk': NavigineSdk$Impl.fromNativePtrImpl,
  'navigine_sdk.RouteSession': RouteSession$Impl.fromNativePtrImpl,
  'navigine_sdk.Image': Image$Impl.fromNativePtrImpl,
  'navigine_sdk.BitmapRegionDecoder': BitmapRegionDecoder$Impl.fromNativePtrImpl,
  'navigine_sdk.GeometryUtils': GeometryUtils$Impl.fromNativePtrImpl,
  'navigine_sdk.Notification': Notification$Impl.fromNativePtrImpl,
  'navigine_sdk.Wifi': Wifi$Impl.fromNativePtrImpl,
  'navigine_sdk.Zone': Zone$Impl.fromNativePtrImpl,
  'navigine_sdk.Venue': Venue$Impl.fromNativePtrImpl,
  'navigine_sdk.ReferenceEntry': ReferenceEntry$Impl.fromNativePtrImpl,
  'navigine_sdk.ReferencePoint': ReferencePoint$Impl.fromNativePtrImpl,
  'navigine_sdk.Sublocation': Sublocation$Impl.fromNativePtrImpl,
  'navigine_sdk.Location': Location$Impl.fromNativePtrImpl,
  'navigine_sdk.Graph': Graph$Impl.fromNativePtrImpl,
  'navigine_sdk.GraphEdge': GraphEdge$Impl.fromNativePtrImpl,
  'navigine_sdk.GraphVertex': GraphVertex$Impl.fromNativePtrImpl,
  'navigine_sdk.ElevationGraph': ElevationGraph$Impl.fromNativePtrImpl,
  'navigine_sdk.Eddystone': Eddystone$Impl.fromNativePtrImpl,
  'navigine_sdk.Beacon': Beacon$Impl.fromNativePtrImpl,
};
