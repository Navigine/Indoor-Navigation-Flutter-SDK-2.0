part of 'sublocation.dart';

// Sublocation "private" section, not exported.

final _navigine_sdk_flutter_Sublocation_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Sublocation_copy_handle'));

final _navigine_sdk_flutter_Sublocation_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Sublocation_release_handle'));

final _navigine_sdk_flutter_Sublocation_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Sublocation_free');


class Sublocation$Impl extends __lib.NativeBase implements Sublocation, Finalizable {
    Sublocation$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Sublocation_free.cast());

    @override
    ImageWrapper getImage(int? maxTextureSize) {
        final _getImageFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_getImage__MaxTextureSize'));
        final _maxTextureSizeHandle = navigine_sdk_flutter_int_ToFfiNullable(maxTextureSize);
        final _handle = this.handle;
        final __resultHandle = _getImageFfi(_handle, _maxTextureSizeHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandleNullable(_maxTextureSizeHandle);
        final _result = navigine_sdk_flutter_ImageWrapper_FromFfi(__resultHandle);
        navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    LocationPoint globalToLocal(GlobalPoint globalPoint) {
        final _globalToLocalFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_globalToLocal__GlobalPoint'));
        final _globalPointHandle = navigine_sdk_flutter_GlobalPoint_ToFfi(globalPoint);
        final _handle = this.handle;
        final __resultHandle = _globalToLocalFfi(_handle, _globalPointHandle);
        navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(_globalPointHandle);
        final _result = navigine_sdk_flutter_LocationPoint_FromFfi(__resultHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    GlobalPoint localToGlobal(LocationPoint localPoint) {
        final _localToGlobalFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_localToGlobal__LocalPoint'));
        final _localPointHandle = navigine_sdk_flutter_LocationPoint_ToFfi(localPoint);
        final _handle = this.handle;
        final __resultHandle = _localToGlobalFfi(_handle, _localPointHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_localPointHandle);
        final _result = navigine_sdk_flutter_GlobalPoint_FromFfi(__resultHandle);
        navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    Graph getGraph(String tag) {
        final _getGraphFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_getGraph__Tag'));
        final _tagHandle = navigine_sdk_flutter_String_ToFfi(tag);
        final _handle = this.handle;
        final __resultHandle = _getGraphFfi(_handle, _tagHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_tagHandle);
        final _result = navigine_sdk_flutter_Graph_FromFfi(__resultHandle);
        navigine_sdk_flutter_Graph_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    Venue getVenueById(int id) {
        final _getVenueByIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Int32),
            Pointer<Void> Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_Sublocation_getVenueById__Id'));
        final _idHandle = navigine_sdk_flutter_int_ToFfi(id);
        final _handle = this.handle;
        final __resultHandle = _getVenueByIdFfi(_handle, _idHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        final _result = navigine_sdk_flutter_Venue_FromFfi(__resultHandle);
        navigine_sdk_flutter_Venue_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    Zone getZoneById(int id) {
        final _getZoneByIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Int32),
            Pointer<Void> Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_Sublocation_getZoneById__Id'));
        final _idHandle = navigine_sdk_flutter_int_ToFfi(id);
        final _handle = this.handle;
        final __resultHandle = _getZoneByIdFfi(_handle, _idHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        final _result = navigine_sdk_flutter_Zone_FromFfi(__resultHandle);
        navigine_sdk_flutter_Zone_ReleaseFfiHandle(__resultHandle);
        return _result;
    }


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_id_get'));

        final _handle = this.handle;
        final _idHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_idHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        return _result;
    }


    int get location {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_location_get'));

        final _handle = this.handle;
        final _locationHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_locationHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_locationHandle);
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_nameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        return _result;
    }


    double get width {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_width_get'));

        final _handle = this.handle;
        final _widthHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_double_FromFfi(_widthHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_widthHandle);
        return _result;
    }


    double get height {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_height_get'));

        final _handle = this.handle;
        final _heightHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_double_FromFfi(_heightHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_heightHandle);
        return _result;
    }


    double? get altitude {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_altitude_get'));

        final _handle = this.handle;
        final _altitudeHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_double_FromFfiNullable(_altitudeHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_altitudeHandle);
        return _result;
    }


    double get azimuth {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_azimuth_get'));

        final _handle = this.handle;
        final _azimuthHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_double_FromFfi(_azimuthHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_azimuthHandle);
        return _result;
    }


    GlobalPoint get originPoint {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_originPoint_get'));

        final _handle = this.handle;
        final _originPointHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_GlobalPoint_FromFfi(_originPointHandle);
        navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(_originPointHandle);
        return _result;
    }


    String get levelId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_levelId_get'));

        final _handle = this.handle;
        final _levelIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_levelIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_levelIdHandle);
        return _result;
    }


    String get externalId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_externalId_get'));

        final _handle = this.handle;
        final _externalIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_externalIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_externalIdHandle);
        return _result;
    }


    List<Beacon> get beacons {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_beacons_get'));

        final _handle = this.handle;
        final _beaconsHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_List_Beacon_FromFfi(_beaconsHandle);
        navigine_sdk_flutter_List_Beacon_ReleaseFfiHandle(_beaconsHandle);
        return _result;
    }


    List<Eddystone> get eddystones {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_eddystones_get'));

        final _handle = this.handle;
        final _eddystonesHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_List_Eddystone_FromFfi(_eddystonesHandle);
        navigine_sdk_flutter_List_Eddystone_ReleaseFfiHandle(_eddystonesHandle);
        return _result;
    }


    List<Wifi> get wifis {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_wifis_get'));

        final _handle = this.handle;
        final _wifisHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_List_Wifi_FromFfi(_wifisHandle);
        navigine_sdk_flutter_List_Wifi_ReleaseFfiHandle(_wifisHandle);
        return _result;
    }


    List<ReferencePoint> get referencePoints {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_referencePoints_get'));

        final _handle = this.handle;
        final _referencePointsHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_List_ReferencePoint_FromFfi(_referencePointsHandle);
        navigine_sdk_flutter_List_ReferencePoint_ReleaseFfiHandle(_referencePointsHandle);
        return _result;
    }


    List<Venue> get venues {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_venues_get'));

        final _handle = this.handle;
        final _venuesHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_List_Venue_FromFfi(_venuesHandle);
        navigine_sdk_flutter_List_Venue_ReleaseFfiHandle(_venuesHandle);
        return _result;
    }


    List<Zone> get zones {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Sublocation_zones_get'));

        final _handle = this.handle;
        final _zonesHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_List_Zone_FromFfi(_zonesHandle);
        navigine_sdk_flutter_List_Zone_ReleaseFfiHandle(_zonesHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_Sublocation_ToFfi(Sublocation value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Sublocation_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Sublocation navigine_sdk_flutter_Sublocation_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Sublocation_CopyHandle(handle);
    final result = Sublocation$Impl(_copiedHandle);
    Sublocation$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Sublocation_ToFfiNullable(Sublocation? value) => 
  value != null ? navigine_sdk_flutter_Sublocation_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Sublocation_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Sublocation_ReleaseHandle(handle);

void navigine_sdk_flutter_Sublocation_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Sublocation_ReleaseHandle(handle);

Sublocation? navigine_sdk_flutter_Sublocation_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Sublocation_FromFfi(handle) : null;

// End of Sublocation "private" section.

final _navigine_sdk_flutter_List_Zone_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_Zone_create_handle'));

final _navigine_sdk_flutter_List_Zone_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Zone_release_handle'));

final _navigine_sdk_flutter_List_Zone_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Zone_insert'));

final _navigine_sdk_flutter_List_Zone_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Zone_iterator'));

final _navigine_sdk_flutter_List_Zone_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Zone_iterator_release_handle'));

final _navigine_sdk_flutter_List_Zone_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Zone_iterator_is_valid'));

final _navigine_sdk_flutter_List_Zone_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Zone_iterator_increment'));

final _navigine_sdk_flutter_List_Zone_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Zone_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_Zone_ToFfi(List<Zone> value)  {
    final _result = _navigine_sdk_flutter_List_Zone_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_Zone_ToFfi(element);
        _navigine_sdk_flutter_List_Zone_Insert(_result, _elementHandle);
        navigine_sdk_flutter_Zone_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<Zone> navigine_sdk_flutter_List_Zone_FromFfi(Pointer<Void> handle)  {
    final result = List<Zone>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_Zone_Iterator(handle);
    while (_navigine_sdk_flutter_List_Zone_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_Zone_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_Zone_FromFfi(_elementHandle));
        navigine_sdk_flutter_Zone_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_Zone_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_Zone_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_Zone_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_Zone_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Zone_create_handle_nullable'));

final _navigine_sdk_flutter_List_Zone_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Zone_release_handle_nullable'));

final _navigine_sdk_flutter_List_Zone_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Zone_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_Zone_ToFfiNullable(List<Zone>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_Zone_ToFfi(value);
    final result = _navigine_sdk_flutter_List_Zone_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_Zone_ReleaseFfiHandle(_handle);
    return result;
}

List<Zone>? navigine_sdk_flutter_List_Zone_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_Zone_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_Zone_FromFfi(_handle);
    navigine_sdk_flutter_List_Zone_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_Zone_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_Zone_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_Eddystone_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_Eddystone_create_handle'));

final _navigine_sdk_flutter_List_Eddystone_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Eddystone_release_handle'));

final _navigine_sdk_flutter_List_Eddystone_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Eddystone_insert'));

final _navigine_sdk_flutter_List_Eddystone_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Eddystone_iterator'));

final _navigine_sdk_flutter_List_Eddystone_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Eddystone_iterator_release_handle'));

final _navigine_sdk_flutter_List_Eddystone_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Eddystone_iterator_is_valid'));

final _navigine_sdk_flutter_List_Eddystone_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Eddystone_iterator_increment'));

final _navigine_sdk_flutter_List_Eddystone_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Eddystone_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_Eddystone_ToFfi(List<Eddystone> value)  {
    final _result = _navigine_sdk_flutter_List_Eddystone_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_Eddystone_ToFfi(element);
        _navigine_sdk_flutter_List_Eddystone_Insert(_result, _elementHandle);
        navigine_sdk_flutter_Eddystone_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<Eddystone> navigine_sdk_flutter_List_Eddystone_FromFfi(Pointer<Void> handle)  {
    final result = List<Eddystone>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_Eddystone_Iterator(handle);
    while (_navigine_sdk_flutter_List_Eddystone_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_Eddystone_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_Eddystone_FromFfi(_elementHandle));
        navigine_sdk_flutter_Eddystone_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_Eddystone_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_Eddystone_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_Eddystone_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_Eddystone_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Eddystone_create_handle_nullable'));

final _navigine_sdk_flutter_List_Eddystone_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Eddystone_release_handle_nullable'));

final _navigine_sdk_flutter_List_Eddystone_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Eddystone_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_Eddystone_ToFfiNullable(List<Eddystone>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_Eddystone_ToFfi(value);
    final result = _navigine_sdk_flutter_List_Eddystone_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_Eddystone_ReleaseFfiHandle(_handle);
    return result;
}

List<Eddystone>? navigine_sdk_flutter_List_Eddystone_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_Eddystone_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_Eddystone_FromFfi(_handle);
    navigine_sdk_flutter_List_Eddystone_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_Eddystone_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_Eddystone_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_ReferencePoint_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_ReferencePoint_create_handle'));

final _navigine_sdk_flutter_List_ReferencePoint_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferencePoint_release_handle'));

final _navigine_sdk_flutter_List_ReferencePoint_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferencePoint_insert'));

final _navigine_sdk_flutter_List_ReferencePoint_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferencePoint_iterator'));

final _navigine_sdk_flutter_List_ReferencePoint_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferencePoint_iterator_release_handle'));

final _navigine_sdk_flutter_List_ReferencePoint_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferencePoint_iterator_is_valid'));

final _navigine_sdk_flutter_List_ReferencePoint_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferencePoint_iterator_increment'));

final _navigine_sdk_flutter_List_ReferencePoint_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferencePoint_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_ReferencePoint_ToFfi(List<ReferencePoint> value)  {
    final _result = _navigine_sdk_flutter_List_ReferencePoint_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_ReferencePoint_ToFfi(element);
        _navigine_sdk_flutter_List_ReferencePoint_Insert(_result, _elementHandle);
        navigine_sdk_flutter_ReferencePoint_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<ReferencePoint> navigine_sdk_flutter_List_ReferencePoint_FromFfi(Pointer<Void> handle)  {
    final result = List<ReferencePoint>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_ReferencePoint_Iterator(handle);
    while (_navigine_sdk_flutter_List_ReferencePoint_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_ReferencePoint_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_ReferencePoint_FromFfi(_elementHandle));
        navigine_sdk_flutter_ReferencePoint_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_ReferencePoint_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_ReferencePoint_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_ReferencePoint_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_ReferencePoint_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferencePoint_create_handle_nullable'));

final _navigine_sdk_flutter_List_ReferencePoint_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferencePoint_release_handle_nullable'));

final _navigine_sdk_flutter_List_ReferencePoint_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferencePoint_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_ReferencePoint_ToFfiNullable(List<ReferencePoint>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_ReferencePoint_ToFfi(value);
    final result = _navigine_sdk_flutter_List_ReferencePoint_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_ReferencePoint_ReleaseFfiHandle(_handle);
    return result;
}

List<ReferencePoint>? navigine_sdk_flutter_List_ReferencePoint_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_ReferencePoint_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_ReferencePoint_FromFfi(_handle);
    navigine_sdk_flutter_List_ReferencePoint_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_ReferencePoint_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_ReferencePoint_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_Beacon_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_Beacon_create_handle'));

final _navigine_sdk_flutter_List_Beacon_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Beacon_release_handle'));

final _navigine_sdk_flutter_List_Beacon_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Beacon_insert'));

final _navigine_sdk_flutter_List_Beacon_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Beacon_iterator'));

final _navigine_sdk_flutter_List_Beacon_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Beacon_iterator_release_handle'));

final _navigine_sdk_flutter_List_Beacon_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Beacon_iterator_is_valid'));

final _navigine_sdk_flutter_List_Beacon_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Beacon_iterator_increment'));

final _navigine_sdk_flutter_List_Beacon_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Beacon_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_Beacon_ToFfi(List<Beacon> value)  {
    final _result = _navigine_sdk_flutter_List_Beacon_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_Beacon_ToFfi(element);
        _navigine_sdk_flutter_List_Beacon_Insert(_result, _elementHandle);
        navigine_sdk_flutter_Beacon_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<Beacon> navigine_sdk_flutter_List_Beacon_FromFfi(Pointer<Void> handle)  {
    final result = List<Beacon>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_Beacon_Iterator(handle);
    while (_navigine_sdk_flutter_List_Beacon_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_Beacon_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_Beacon_FromFfi(_elementHandle));
        navigine_sdk_flutter_Beacon_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_Beacon_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_Beacon_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_Beacon_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_Beacon_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Beacon_create_handle_nullable'));

final _navigine_sdk_flutter_List_Beacon_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Beacon_release_handle_nullable'));

final _navigine_sdk_flutter_List_Beacon_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Beacon_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_Beacon_ToFfiNullable(List<Beacon>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_Beacon_ToFfi(value);
    final result = _navigine_sdk_flutter_List_Beacon_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_Beacon_ReleaseFfiHandle(_handle);
    return result;
}

List<Beacon>? navigine_sdk_flutter_List_Beacon_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_Beacon_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_Beacon_FromFfi(_handle);
    navigine_sdk_flutter_List_Beacon_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_Beacon_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_Beacon_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_Wifi_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_Wifi_create_handle'));

final _navigine_sdk_flutter_List_Wifi_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Wifi_release_handle'));

final _navigine_sdk_flutter_List_Wifi_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Wifi_insert'));

final _navigine_sdk_flutter_List_Wifi_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Wifi_iterator'));

final _navigine_sdk_flutter_List_Wifi_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Wifi_iterator_release_handle'));

final _navigine_sdk_flutter_List_Wifi_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Wifi_iterator_is_valid'));

final _navigine_sdk_flutter_List_Wifi_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Wifi_iterator_increment'));

final _navigine_sdk_flutter_List_Wifi_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Wifi_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_Wifi_ToFfi(List<Wifi> value)  {
    final _result = _navigine_sdk_flutter_List_Wifi_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_Wifi_ToFfi(element);
        _navigine_sdk_flutter_List_Wifi_Insert(_result, _elementHandle);
        navigine_sdk_flutter_Wifi_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<Wifi> navigine_sdk_flutter_List_Wifi_FromFfi(Pointer<Void> handle)  {
    final result = List<Wifi>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_Wifi_Iterator(handle);
    while (_navigine_sdk_flutter_List_Wifi_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_Wifi_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_Wifi_FromFfi(_elementHandle));
        navigine_sdk_flutter_Wifi_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_Wifi_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_Wifi_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_Wifi_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_Wifi_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Wifi_create_handle_nullable'));

final _navigine_sdk_flutter_List_Wifi_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Wifi_release_handle_nullable'));

final _navigine_sdk_flutter_List_Wifi_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Wifi_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_Wifi_ToFfiNullable(List<Wifi>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_Wifi_ToFfi(value);
    final result = _navigine_sdk_flutter_List_Wifi_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_Wifi_ReleaseFfiHandle(_handle);
    return result;
}

List<Wifi>? navigine_sdk_flutter_List_Wifi_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_Wifi_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_Wifi_FromFfi(_handle);
    navigine_sdk_flutter_List_Wifi_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_Wifi_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_Wifi_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_Venue_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_Venue_create_handle'));

final _navigine_sdk_flutter_List_Venue_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Venue_release_handle'));

final _navigine_sdk_flutter_List_Venue_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Venue_insert'));

final _navigine_sdk_flutter_List_Venue_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Venue_iterator'));

final _navigine_sdk_flutter_List_Venue_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Venue_iterator_release_handle'));

final _navigine_sdk_flutter_List_Venue_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Venue_iterator_is_valid'));

final _navigine_sdk_flutter_List_Venue_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Venue_iterator_increment'));

final _navigine_sdk_flutter_List_Venue_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Venue_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_Venue_ToFfi(List<Venue> value)  {
    final _result = _navigine_sdk_flutter_List_Venue_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_Venue_ToFfi(element);
        _navigine_sdk_flutter_List_Venue_Insert(_result, _elementHandle);
        navigine_sdk_flutter_Venue_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<Venue> navigine_sdk_flutter_List_Venue_FromFfi(Pointer<Void> handle)  {
    final result = List<Venue>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_Venue_Iterator(handle);
    while (_navigine_sdk_flutter_List_Venue_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_Venue_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_Venue_FromFfi(_elementHandle));
        navigine_sdk_flutter_Venue_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_Venue_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_Venue_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_Venue_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_Venue_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Venue_create_handle_nullable'));

final _navigine_sdk_flutter_List_Venue_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Venue_release_handle_nullable'));

final _navigine_sdk_flutter_List_Venue_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Venue_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_Venue_ToFfiNullable(List<Venue>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_Venue_ToFfi(value);
    final result = _navigine_sdk_flutter_List_Venue_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_Venue_ReleaseFfiHandle(_handle);
    return result;
}

List<Venue>? navigine_sdk_flutter_List_Venue_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_Venue_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_Venue_FromFfi(_handle);
    navigine_sdk_flutter_List_Venue_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_Venue_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_Venue_ReleaseHandleNullable(handle);
