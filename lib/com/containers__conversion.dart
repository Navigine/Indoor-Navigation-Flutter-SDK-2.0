import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_entry.dart';
import 'package:navigine_sdk/com/navigine/idl/category.dart';
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/eddystone.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_vertex.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/location_info.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/log_info.dart';
import 'package:navigine_sdk/com/navigine/idl/map_filter_condition.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_entry.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_event.dart';
import 'package:navigine_sdk/com/navigine/idl/route_node.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';
import 'package:navigine_sdk/com/navigine/idl/segment.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_measurement.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_type.dart';
import 'package:navigine_sdk/com/navigine/idl/signal_measurement.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart';
import 'package:navigine_sdk/com/navigine/idl/venue.dart';
import 'package:navigine_sdk/com/navigine/idl/wifi.dart';
import 'package:navigine_sdk/com/navigine/idl/zone.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';


final class ListBeaconImpl {
  ListBeaconImpl._();

  static List<Beacon> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Beacon$Impl.fromExternalPtr(element));

  static List<Beacon>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Beacon$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Beacon>? value) =>
    toNativeListNullable(value, (element) => Beacon$Impl.getNativePtr(element));
}

final class ListBeaconProximityEntryImpl {
  ListBeaconProximityEntryImpl._();

  static List<BeaconProximityEntry> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => BeaconProximityEntryImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<BeaconProximityEntry>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => BeaconProximityEntryImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<BeaconProximityEntry>? value) =>
    toNativeListNullable(value, (element) => BeaconProximityEntryImpl.toPointer(element));
}

final class ListCategoryImpl {
  ListCategoryImpl._();

  static List<Category> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => CategoryImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<Category>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => CategoryImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<Category>? value) =>
    toNativeListNullable(value, (element) => CategoryImpl.toPointer(element));
}

final class ListClusterMapObjectImpl {
  ListClusterMapObjectImpl._();

  static List<ClusterMapObject> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => ClusterMapObject$Impl.fromExternalPtr(element));

  static List<ClusterMapObject>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => ClusterMapObject$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<ClusterMapObject>? value) =>
    toNativeListNullable(value, (element) => ClusterMapObject$Impl.getNativePtr(element));
}

final class ListEddystoneImpl {
  ListEddystoneImpl._();

  static List<Eddystone> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Eddystone$Impl.fromExternalPtr(element));

  static List<Eddystone>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Eddystone$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Eddystone>? value) =>
    toNativeListNullable(value, (element) => Eddystone$Impl.getNativePtr(element));
}

final class ListGraphEdgeImpl {
  ListGraphEdgeImpl._();

  static List<GraphEdge> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => GraphEdge$Impl.fromExternalPtr(element));

  static List<GraphEdge>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => GraphEdge$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<GraphEdge>? value) =>
    toNativeListNullable(value, (element) => GraphEdge$Impl.getNativePtr(element));
}

final class ListGraphVertexImpl {
  ListGraphVertexImpl._();

  static List<GraphVertex> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => GraphVertex$Impl.fromExternalPtr(element));

  static List<GraphVertex>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => GraphVertex$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<GraphVertex>? value) =>
    toNativeListNullable(value, (element) => GraphVertex$Impl.getNativePtr(element));
}

final class ListIconMapObjectImpl {
  ListIconMapObjectImpl._();

  static List<IconMapObject> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => IconMapObject$Impl.fromExternalPtr(element));

  static List<IconMapObject>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => IconMapObject$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<IconMapObject>? value) =>
    toNativeListNullable(value, (element) => IconMapObject$Impl.getNativePtr(element));
}

final class ListLocationPointImpl {
  ListLocationPointImpl._();

  static List<LocationPoint> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => LocationPointImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<LocationPoint>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => LocationPointImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<LocationPoint>? value) =>
    toNativeListNullable(value, (element) => LocationPointImpl.toPointer(element));
}

final class ListLogInfoImpl {
  ListLogInfoImpl._();

  static List<LogInfo> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => LogInfoImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<LogInfo>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => LogInfoImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<LogInfo>? value) =>
    toNativeListNullable(value, (element) => LogInfoImpl.toPointer(element));
}

final class ListMapFilterConditionImpl {
  ListMapFilterConditionImpl._();

  static List<MapFilterCondition> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => MapFilterConditionImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<MapFilterCondition>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => MapFilterConditionImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<MapFilterCondition>? value) =>
    toNativeListNullable(value, (element) => MapFilterConditionImpl.toPointer(element));
}

final class ListPointImpl {
  ListPointImpl._();

  static List<Point> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => PointImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<Point>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => PointImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<Point>? value) =>
    toNativeListNullable(value, (element) => PointImpl.toPointer(element));
}

final class ListReferenceEntryImpl {
  ListReferenceEntryImpl._();

  static List<ReferenceEntry> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => ReferenceEntry$Impl.fromExternalPtr(element));

  static List<ReferenceEntry>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => ReferenceEntry$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<ReferenceEntry>? value) =>
    toNativeListNullable(value, (element) => ReferenceEntry$Impl.getNativePtr(element));
}

final class ListReferencePointImpl {
  ListReferencePointImpl._();

  static List<ReferencePoint> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => ReferencePoint$Impl.fromExternalPtr(element));

  static List<ReferencePoint>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => ReferencePoint$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<ReferencePoint>? value) =>
    toNativeListNullable(value, (element) => ReferencePoint$Impl.getNativePtr(element));
}

final class ListRouteEventImpl {
  ListRouteEventImpl._();

  static List<RouteEvent> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => RouteEventImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<RouteEvent>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => RouteEventImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<RouteEvent>? value) =>
    toNativeListNullable(value, (element) => RouteEventImpl.toPointer(element));
}

final class ListRouteNodeImpl {
  ListRouteNodeImpl._();

  static List<RouteNode> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => RouteNodeImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<RouteNode>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => RouteNodeImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<RouteNode>? value) =>
    toNativeListNullable(value, (element) => RouteNodeImpl.toPointer(element));
}

final class ListRoutePathImpl {
  ListRoutePathImpl._();

  static List<RoutePath> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => RoutePath$Impl.fromExternalPtr(element));

  static List<RoutePath>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => RoutePath$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<RoutePath>? value) =>
    toNativeListNullable(value, (element) => RoutePath$Impl.getNativePtr(element));
}

final class ListSegmentImpl {
  ListSegmentImpl._();

  static List<Segment> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => SegmentImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<Segment>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => SegmentImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<Segment>? value) =>
    toNativeListNullable(value, (element) => SegmentImpl.toPointer(element));
}

final class ListStringImpl {
  ListStringImpl._();

  static List<String> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => toPlatformFromPointerString(element, needFree: false)!);

  static List<String>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => toPlatformFromPointerString(element, needFree: false)!);

  static Pointer<Void> getNativePtr(List<String>? value) =>
    toNativeListNullable(value, (element) => toNativePtrString(element));
}

final class ListSublocationImpl {
  ListSublocationImpl._();

  static List<Sublocation> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Sublocation$Impl.fromExternalPtr(element));

  static List<Sublocation>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Sublocation$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Sublocation>? value) =>
    toNativeListNullable(value, (element) => Sublocation$Impl.getNativePtr(element));
}

final class ListVenueImpl {
  ListVenueImpl._();

  static List<Venue> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Venue$Impl.fromExternalPtr(element));

  static List<Venue>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Venue$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Venue>? value) =>
    toNativeListNullable(value, (element) => Venue$Impl.getNativePtr(element));
}

final class ListWifiImpl {
  ListWifiImpl._();

  static List<Wifi> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Wifi$Impl.fromExternalPtr(element));

  static List<Wifi>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Wifi$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Wifi>? value) =>
    toNativeListNullable(value, (element) => Wifi$Impl.getNativePtr(element));
}

final class ListZoneImpl {
  ListZoneImpl._();

  static List<Zone> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Zone$Impl.fromExternalPtr(element));

  static List<Zone>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Zone$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Zone>? value) =>
    toNativeListNullable(value, (element) => Zone$Impl.getNativePtr(element));
}

final class MapSensorType_SensorMeasurementImpl {
  MapSensorType_SensorMeasurementImpl._();

  static Map<SensorType, SensorMeasurement> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformIntMap(handle, (nativeValue) => SensorMeasurementImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!, keyFromInt: SensorTypeImpl.fromInt, keyToInt: SensorTypeImpl.toInt);

  static Map<SensorType, SensorMeasurement>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformIntMapNullable(handle, (nativeValue) => SensorMeasurementImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!, keyFromInt: SensorTypeImpl.fromInt, keyToInt: SensorTypeImpl.toInt);

  static Pointer<Void> getNativePtr(Map<SensorType, SensorMeasurement>? value) =>
    toNativeIntMapNullable(value, SensorTypeImpl.toInt, (value) => SensorMeasurementImpl.toPointer(value));
}

final class MapString_SignalMeasurementImpl {
  MapString_SignalMeasurementImpl._();

  static Map<String, SignalMeasurement> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformStringMap(handle, (nativeValue) => SignalMeasurementImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!);

  static Map<String, SignalMeasurement>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformStringMapNullable(handle, (nativeValue) => SignalMeasurementImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(Map<String, SignalMeasurement>? value) =>
    toNativeStringMapNullable(value, (value) => SignalMeasurementImpl.toPointer(value));
}

final class MapString_StringImpl {
  MapString_StringImpl._();

  static Map<String, String> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformStringMap(handle, (nativeValue) => toPlatformFromPointerString(nativeValue, needFree: false)!);

  static Map<String, String>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformStringMapNullable(handle, (nativeValue) => toPlatformFromPointerString(nativeValue, needFree: false)!);

  static Pointer<Void> getNativePtr(Map<String, String>? value) =>
    toNativeStringMapNullable(value, (value) => toNativePtrString(value));
}

final class MapInt_LocationInfoImpl {
  MapInt_LocationInfoImpl._();

  static Map<int, LocationInfo> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformIntMap(handle, (nativeValue) => LocationInfoImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!);

  static Map<int, LocationInfo>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformIntMapNullable(handle, (nativeValue) => LocationInfoImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(Map<int, LocationInfo>? value) =>
    toNativeIntMapNullable(value, (key) => key, (value) => LocationInfoImpl.toPointer(value));
}
