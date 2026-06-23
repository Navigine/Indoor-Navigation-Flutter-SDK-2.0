part of 'sublocation.dart';

// Sublocation "private" section, not exported.

final _navigine_sdk_flutter_Sublocation_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Sublocation_check'));

final _navigine_sdk_flutter_Sublocation_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Sublocation_free');


class Sublocation$Impl implements Sublocation, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Sublocation_free.cast());

    Sublocation$Impl.fromExternalPtr(this.ptr);

    @internal
    Sublocation$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Sublocation$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Sublocation_check(ptr);

    static Pointer<Void> getNativePtr(Sublocation? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Sublocation$Impl).ptr;
    }

    static Sublocation? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Sublocation$Impl.fromNativePtr(ptr);
    }

    @override
    ImageWrapper getImage(int? maxTextureSize) {
        final _getImageFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_getImage__MaxTextureSize'));
        final __resultHandle = _getImageFfi(this.ptr, toNativePtrInt32(maxTextureSize));
        final _result = ImageWrapperImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    LocationPoint globalToLocal(GlobalPoint globalPoint) {
        final _globalToLocalFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            LocationPointNative Function(Pointer<Void>, GlobalPointNative),
            LocationPointNative Function(Pointer<Void>, GlobalPointNative)
          >('navigine_sdk_flutter_Sublocation_globalToLocal__GlobalPoint'));
        final __resultHandle = _globalToLocalFfi(this.ptr, GlobalPointImpl.toNative(globalPoint));
        final _result = LocationPointImpl.fromNative(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    GlobalPoint localToGlobal(LocationPoint localPoint) {
        final _localToGlobalFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            GlobalPointNative Function(Pointer<Void>, LocationPointNative),
            GlobalPointNative Function(Pointer<Void>, LocationPointNative)
          >('navigine_sdk_flutter_Sublocation_localToGlobal__LocalPoint'));
        final __resultHandle = _localToGlobalFfi(this.ptr, LocationPointImpl.toNative(localPoint));
        final _result = GlobalPointImpl.fromNative(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    Graph getGraph(String tag) {
        final _getGraphFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, NativeString),
            Pointer<Void> Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_Sublocation_getGraph__Tag'));
        final __resultHandle = _getGraphFfi(this.ptr, toNativeString(tag));
        final _result = Graph$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    Venue getVenueById(int id) {
        final _getVenueByIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Int32),
            Pointer<Void> Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_Sublocation_getVenueById__Id'));
        final __resultHandle = _getVenueByIdFfi(this.ptr, id);
        final _result = Venue$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    Zone getZoneById(int id) {
        final _getZoneByIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Int32),
            Pointer<Void> Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_Sublocation_getZoneById__Id'));
        final __resultHandle = _getZoneByIdFfi(this.ptr, id);
        final _result = Zone$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_id_get'));

        final _idHandle = _getFfi(this.ptr);
        final _result = _idHandle;
        exception.checkCallResult();
        return _result;
    }


    int get location {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_location_get'));

        final _locationHandle = _getFfi(this.ptr);
        final _result = _locationHandle;
        exception.checkCallResult();
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_name_get'));

        final _nameHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_nameHandle);
        exception.checkCallResult();
        return _result;
    }


    double get width {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_width_get'));

        final _widthHandle = _getFfi(this.ptr);
        final _result = _widthHandle;
        exception.checkCallResult();
        return _result;
    }


    double get height {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_height_get'));

        final _heightHandle = _getFfi(this.ptr);
        final _result = _heightHandle;
        exception.checkCallResult();
        return _result;
    }


    double? get altitude {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_altitude_get'));

        final _altitudeHandle = _getFfi(this.ptr);
        final _result = toPlatformFromPointerFloat(_altitudeHandle);
        exception.checkCallResult();
        return _result;
    }


    double get azimuth {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_azimuth_get'));

        final _azimuthHandle = _getFfi(this.ptr);
        final _result = _azimuthHandle;
        exception.checkCallResult();
        return _result;
    }


    GlobalPoint get originPoint {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            GlobalPointNative Function(Pointer<Void>),
            GlobalPointNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_originPoint_get'));

        final _originPointHandle = _getFfi(this.ptr);
        final _result = GlobalPointImpl.fromNative(_originPointHandle);
        exception.checkCallResult();
        return _result;
    }


    String get levelId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_levelId_get'));

        final _levelIdHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_levelIdHandle);
        exception.checkCallResult();
        return _result;
    }


    String get externalId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_externalId_get'));

        final _externalIdHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_externalIdHandle);
        exception.checkCallResult();
        return _result;
    }


    String get buildingName {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_buildingName_get'));

        final _buildingNameHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_buildingNameHandle);
        exception.checkCallResult();
        return _result;
    }


    List<Beacon> get beacons {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_beacons_get'));

        final _beaconsHandle = _getFfi(this.ptr);
        final _result = ListBeaconImpl.fromNativePtr(_beaconsHandle);
        exception.checkCallResult();
        return _result;
    }


    List<Eddystone> get eddystones {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_eddystones_get'));

        final _eddystonesHandle = _getFfi(this.ptr);
        final _result = ListEddystoneImpl.fromNativePtr(_eddystonesHandle);
        exception.checkCallResult();
        return _result;
    }


    List<Wifi> get wifis {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_wifis_get'));

        final _wifisHandle = _getFfi(this.ptr);
        final _result = ListWifiImpl.fromNativePtr(_wifisHandle);
        exception.checkCallResult();
        return _result;
    }


    List<ReferencePoint> get referencePoints {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_referencePoints_get'));

        final _referencePointsHandle = _getFfi(this.ptr);
        final _result = ListReferencePointImpl.fromNativePtr(_referencePointsHandle);
        exception.checkCallResult();
        return _result;
    }


    List<Venue> get venues {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_venues_get'));

        final _venuesHandle = _getFfi(this.ptr);
        final _result = ListVenueImpl.fromNativePtr(_venuesHandle);
        exception.checkCallResult();
        return _result;
    }


    List<Zone> get zones {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_zones_get'));

        final _zonesHandle = _getFfi(this.ptr);
        final _result = ListZoneImpl.fromNativePtr(_zonesHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of Sublocation "private" section.
