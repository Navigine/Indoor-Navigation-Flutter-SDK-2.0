import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_entry.dart';
import 'package:navigine_sdk/error.dart';

abstract class BeaconProximityEstimatorListener {
    factory BeaconProximityEstimatorListener(
      void Function(List<BeaconProximityEntry>) onScanResultReadyLambda,
      void Function(double) onProgressChangedLambda,
      void Function(List<BeaconProximityEntry>) onFinishedLambda,
      void Function(Error) onFailedLambda,
    ) => BeaconProximityEstimatorListener$Lambdas(
      onScanResultReadyLambda,
      onProgressChangedLambda,
      onFinishedLambda,
      onFailedLambda,
    );

    void onScanResultReady(List<BeaconProximityEntry> beacons);
    void onProgressChanged(double progress);
    void onFinished(List<BeaconProximityEntry> beacons);
    void onFailed(Error error);



}

// BeaconProximityEstimatorListener "private" section, not exported.

final _navigine_sdk_flutter_BeaconProximityEstimatorListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEstimatorListener_release_handle'));

final _navigine_sdk_flutter_BeaconProximityEstimatorListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_BeaconProximityEstimatorListener_create_proxy'));


class BeaconProximityEstimatorListener$Lambdas implements BeaconProximityEstimatorListener {
    void Function(List<BeaconProximityEntry>) onScanResultReadyLambda;
    void Function(double) onProgressChangedLambda;
    void Function(List<BeaconProximityEntry>) onFinishedLambda;
    void Function(Error) onFailedLambda;

    BeaconProximityEstimatorListener$Lambdas(
      this.onScanResultReadyLambda,
      this.onProgressChangedLambda,
      this.onFinishedLambda,
      this.onFailedLambda,
    );

    @override
    void onScanResultReady(List<BeaconProximityEntry> beacons) =>
      onScanResultReadyLambda(beacons);

    @override
    void onProgressChanged(double progress) =>
      onProgressChangedLambda(progress);

    @override
    void onFinished(List<BeaconProximityEntry> beacons) =>
      onFinishedLambda(beacons);

    @override
    void onFailed(Error error) =>
      onFailedLambda(error);


}
int _navigine_sdk_flutter_BeaconProximityEstimatorListener_onScanResultReadyStatic(Object _obj, Pointer<Void> beacons) {
    
    try  {
        (_obj as BeaconProximityEstimatorListener).onScanResultReady(
          navigine_sdk_flutter_List_BeaconProximityEntry_FromFfi(beacons),
        );

        
    }
    finally  {
          navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandle(beacons);

    }
    return 0;
}

int _navigine_sdk_flutter_BeaconProximityEstimatorListener_onProgressChangedStatic(Object _obj, double progress) {
    
    try  {
        (_obj as BeaconProximityEstimatorListener).onProgressChanged(
          navigine_sdk_flutter_double_FromFfi(progress),
        );

        
    }
    finally  {
          navigine_sdk_flutter_double_ReleaseFfiHandle(progress);

    }
    return 0;
}

int _navigine_sdk_flutter_BeaconProximityEstimatorListener_onFinishedStatic(Object _obj, Pointer<Void> beacons) {
    
    try  {
        (_obj as BeaconProximityEstimatorListener).onFinished(
          navigine_sdk_flutter_List_BeaconProximityEntry_FromFfi(beacons),
        );

        
    }
    finally  {
          navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandle(beacons);

    }
    return 0;
}

int _navigine_sdk_flutter_BeaconProximityEstimatorListener_onFailedStatic(Object _obj, Pointer<Void> error) {
    
    try  {
        (_obj as BeaconProximityEstimatorListener).onFailed(
          navigine_sdk_flutter_Error_FromFfi(error),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Error_ReleaseFfiHandle(error);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_BeaconProximityEstimatorListener_ToFfi(BeaconProximityEstimatorListener value) {
    final result = _navigine_sdk_flutter_BeaconProximityEstimatorListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onScanResultReadyStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Float)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onProgressChangedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onFinishedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onFailedStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_BeaconProximityEstimatorListener_ToFfiNullable(BeaconProximityEstimatorListener? value) => 
  value != null ? navigine_sdk_flutter_BeaconProximityEstimatorListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_BeaconProximityEstimatorListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_BeaconProximityEstimatorListener_ReleaseHandle(handle);

void navigine_sdk_flutter_BeaconProximityEstimatorListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_BeaconProximityEstimatorListener_ReleaseHandle(handle);

// End of BeaconProximityEstimatorListener "private" section.

final _navigine_sdk_flutter_List_BeaconProximityEntry_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_BeaconProximityEntry_create_handle'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_release_handle'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_insert'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_iterator'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_iterator_release_handle'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_iterator_is_valid'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_iterator_increment'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_BeaconProximityEntry_ToFfi(List<BeaconProximityEntry> value)  {
    final _result = _navigine_sdk_flutter_List_BeaconProximityEntry_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_BeaconProximityEntry_ToFfi(element);
        _navigine_sdk_flutter_List_BeaconProximityEntry_Insert(_result, _elementHandle);
        navigine_sdk_flutter_BeaconProximityEntry_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<BeaconProximityEntry> navigine_sdk_flutter_List_BeaconProximityEntry_FromFfi(Pointer<Void> handle)  {
    final result = List<BeaconProximityEntry>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_BeaconProximityEntry_Iterator(handle);
    while (_navigine_sdk_flutter_List_BeaconProximityEntry_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_BeaconProximityEntry_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_BeaconProximityEntry_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_BeaconProximityEntry_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_create_handle_nullable'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_release_handle_nullable'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_BeaconProximityEntry_ToFfiNullable(List<BeaconProximityEntry>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_BeaconProximityEntry_ToFfi(value);
    final result = _navigine_sdk_flutter_List_BeaconProximityEntry_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandle(_handle);
    return result;
}

List<BeaconProximityEntry>? navigine_sdk_flutter_List_BeaconProximityEntry_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_BeaconProximityEntry_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_BeaconProximityEntry_FromFfi(_handle);
    navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseHandleNullable(handle);
