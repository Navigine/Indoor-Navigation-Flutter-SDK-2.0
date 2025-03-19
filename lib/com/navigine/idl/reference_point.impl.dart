part of 'reference_point.dart';

// ReferencePoint "private" section, not exported.

final _navigine_sdk_flutter_ReferencePoint_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferencePoint_copy_handle'));

final _navigine_sdk_flutter_ReferencePoint_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferencePoint_release_handle'));

final _navigine_sdk_flutter_ReferencePoint_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ReferencePoint_free');


class ReferencePoint$Impl extends __lib.NativeBase implements ReferencePoint, Finalizable {
    ReferencePoint$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ReferencePoint_free.cast());


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_locationId_get'));

        final _handle = this.handle;
        final _locationIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_locationIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
        return _result;
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_sublocationId_get'));

        final _handle = this.handle;
        final _sublocationIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_sublocationIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_nameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        return _result;
    }


    String get uuid {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_uuid_get'));

        final _handle = this.handle;
        final _uuidHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_uuidHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_uuidHandle);
        return _result;
    }


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_point_get'));

        final _handle = this.handle;
        final _pointHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_Point_FromFfi(_pointHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        return _result;
    }


    int get quality {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_quality_get'));

        final _handle = this.handle;
        final _qualityHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_qualityHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_qualityHandle);
        return _result;
    }


    int get duration {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int64 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_duration_get'));

        final _handle = this.handle;
        final _durationHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_durationHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_durationHandle);
        return _result;
    }


    String get deviceId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_deviceId_get'));

        final _handle = this.handle;
        final _deviceIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_deviceIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_deviceIdHandle);
        return _result;
    }


    String get deviceModel {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_deviceModel_get'));

        final _handle = this.handle;
        final _deviceModelHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_deviceModelHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_deviceModelHandle);
        return _result;
    }


    String get timeLabel {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_timeLabel_get'));

        final _handle = this.handle;
        final _timeLabelHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_timeLabelHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_timeLabelHandle);
        return _result;
    }


    List<ReferenceEntry> get entries {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_entries_get'));

        final _handle = this.handle;
        final _entriesHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_List_ReferenceEntry_FromFfi(_entriesHandle);
        navigine_sdk_flutter_List_ReferenceEntry_ReleaseFfiHandle(_entriesHandle);
        return _result;
    }


    TransmitterStatus get status {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_status_get'));

        final _handle = this.handle;
        final _statusHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_TransmitterStatus_FromFfi(_statusHandle);
        navigine_sdk_flutter_TransmitterStatus_ReleaseFfiHandle(_statusHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_ReferencePoint_ToFfi(ReferencePoint value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_ReferencePoint_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

ReferencePoint navigine_sdk_flutter_ReferencePoint_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_ReferencePoint_CopyHandle(handle);
    final result = ReferencePoint$Impl(_copiedHandle);
    ReferencePoint$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_ReferencePoint_ToFfiNullable(ReferencePoint? value) => 
  value != null ? navigine_sdk_flutter_ReferencePoint_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ReferencePoint_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ReferencePoint_ReleaseHandle(handle);

void navigine_sdk_flutter_ReferencePoint_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ReferencePoint_ReleaseHandle(handle);

ReferencePoint? navigine_sdk_flutter_ReferencePoint_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_ReferencePoint_FromFfi(handle) : null;

// End of ReferencePoint "private" section.

final _navigine_sdk_flutter_List_ReferenceEntry_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_ReferenceEntry_create_handle'));

final _navigine_sdk_flutter_List_ReferenceEntry_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferenceEntry_release_handle'));

final _navigine_sdk_flutter_List_ReferenceEntry_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferenceEntry_insert'));

final _navigine_sdk_flutter_List_ReferenceEntry_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferenceEntry_iterator'));

final _navigine_sdk_flutter_List_ReferenceEntry_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferenceEntry_iterator_release_handle'));

final _navigine_sdk_flutter_List_ReferenceEntry_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferenceEntry_iterator_is_valid'));

final _navigine_sdk_flutter_List_ReferenceEntry_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferenceEntry_iterator_increment'));

final _navigine_sdk_flutter_List_ReferenceEntry_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferenceEntry_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_ReferenceEntry_ToFfi(List<ReferenceEntry> value)  {
    final _result = _navigine_sdk_flutter_List_ReferenceEntry_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_ReferenceEntry_ToFfi(element);
        _navigine_sdk_flutter_List_ReferenceEntry_Insert(_result, _elementHandle);
        navigine_sdk_flutter_ReferenceEntry_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<ReferenceEntry> navigine_sdk_flutter_List_ReferenceEntry_FromFfi(Pointer<Void> handle)  {
    final result = List<ReferenceEntry>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_ReferenceEntry_Iterator(handle);
    while (_navigine_sdk_flutter_List_ReferenceEntry_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_ReferenceEntry_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_ReferenceEntry_FromFfi(_elementHandle));
        navigine_sdk_flutter_ReferenceEntry_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_ReferenceEntry_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_ReferenceEntry_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_ReferenceEntry_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_ReferenceEntry_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferenceEntry_create_handle_nullable'));

final _navigine_sdk_flutter_List_ReferenceEntry_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferenceEntry_release_handle_nullable'));

final _navigine_sdk_flutter_List_ReferenceEntry_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_ReferenceEntry_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_ReferenceEntry_ToFfiNullable(List<ReferenceEntry>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_ReferenceEntry_ToFfi(value);
    final result = _navigine_sdk_flutter_List_ReferenceEntry_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_ReferenceEntry_ReleaseFfiHandle(_handle);
    return result;
}

List<ReferenceEntry>? navigine_sdk_flutter_List_ReferenceEntry_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_ReferenceEntry_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_ReferenceEntry_FromFfi(_handle);
    navigine_sdk_flutter_List_ReferenceEntry_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_ReferenceEntry_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_ReferenceEntry_ReleaseHandleNullable(handle);
