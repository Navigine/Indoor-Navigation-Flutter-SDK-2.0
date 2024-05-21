import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_entry.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';

abstract class ReferencePoint {


    int get locationId;
    int get sublocationId;
    String get name;
    String get uuid;
    Point get point;
    int get quality;
    int get duration;
    String get deviceId;
    String get deviceModel;
    String get timeLabel;
    List<ReferenceEntry> get entries;
    TransmitterStatus get status;


}

// ReferencePoint "private" section, not exported.

final _navigine_sdk_flutter_ReferencePoint_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferencePoint_copy_handle'));

final _navigine_sdk_flutter_ReferencePoint_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_ReferencePoint_register_finalizer'));

final _navigine_sdk_flutter_ReferencePoint_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferencePoint_get_type_id'));

final _navigine_sdk_flutter_ReferencePoint_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferencePoint_release_handle'));

final _navigine_sdk_flutter_ReferencePoint_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_ReferencePoint_create_proxy'));


class ReferencePoint$Impl extends __lib.NativeBase implements ReferencePoint {

    ReferencePoint$Impl(Pointer<Void> handle) : super(handle);


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_locationId_get'));

        final _handle = this.handle;
        final _locationIdHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_locationIdHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
        }
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_sublocationId_get'));

        final _handle = this.handle;
        final _sublocationIdHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_sublocationIdHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
        }
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_nameHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        }
    }


    String get uuid {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_uuid_get'));

        final _handle = this.handle;
        final _uuidHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_uuidHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_uuidHandle);
        }
    }


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_point_get'));

        final _handle = this.handle;
        final _pointHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_Point_FromFfi(_pointHandle);
        }
        finally  {
            navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        }
    }


    int get quality {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_quality_get'));

        final _handle = this.handle;
        final _qualityHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_qualityHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_qualityHandle);
        }
    }


    int get duration {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int64 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_duration_get'));

        final _handle = this.handle;
        final _durationHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_durationHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_durationHandle);
        }
    }


    String get deviceId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_deviceId_get'));

        final _handle = this.handle;
        final _deviceIdHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_deviceIdHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_deviceIdHandle);
        }
    }


    String get deviceModel {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_deviceModel_get'));

        final _handle = this.handle;
        final _deviceModelHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_deviceModelHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_deviceModelHandle);
        }
    }


    String get timeLabel {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_timeLabel_get'));

        final _handle = this.handle;
        final _timeLabelHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_timeLabelHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_timeLabelHandle);
        }
    }


    List<ReferenceEntry> get entries {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_entries_get'));

        final _handle = this.handle;
        final _entriesHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_List_ReferenceEntry_FromFfi(_entriesHandle);
        }
        finally  {
            navigine_sdk_flutter_List_ReferenceEntry_ReleaseFfiHandle(_entriesHandle);
        }
    }


    TransmitterStatus get status {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_status_get'));

        final _handle = this.handle;
        final _statusHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_TransmitterStatus_FromFfi(_statusHandle);
        }
        finally  {
            navigine_sdk_flutter_TransmitterStatus_ReleaseFfiHandle(_statusHandle);
        }
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
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is ReferencePoint) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_ReferencePoint_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_ReferencePoint_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : ReferencePoint$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_ReferencePoint_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
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
        try  {
            result.add(navigine_sdk_flutter_ReferenceEntry_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_ReferenceEntry_ReleaseFfiHandle(_elementHandle);
        }
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
