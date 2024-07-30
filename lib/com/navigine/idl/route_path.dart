import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_event.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';

/**
 *
 * Class describing path calculated by SDK. It could be
 * 1 - point to point request via `makeRoute` function of RouteManager (@see RouteManager)
 * 2 - path from current user position to destination point (@see RouteManager and @RouteSession)
 *
 */
abstract class RoutePath implements Finalizable {

    /**
     *
     * Method is used to split route path by distance
     * @param advance - distance on the route from the start.
     * @return - pair of splitted route paths.
     *
     */
    List<RoutePath> split(double advance);

    /** Total lenth of the route path in meters. */
    double get length;
    /** List of consecutive incoming events (@see RouteEvent). */
    List<RouteEvent> get events;
    /**
     * List of consecutive points. (@see LocationPoint).
     * NOTE! points could be on different sublocations if target sublocation is different from the starting one
     */
    List<LocationPoint> get points;


}

// RoutePath "private" section, not exported.

final _navigine_sdk_flutter_RoutePath_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RoutePath_copy_handle'));

final _navigine_sdk_flutter_RoutePath_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RoutePath_release_handle'));

final _navigine_sdk_flutter_RoutePath_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RoutePath_free');

final _navigine_sdk_flutter_RoutePath_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_RoutePath_create_proxy'));

final _navigine_sdk_flutter_RoutePath_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_RoutePath_set_ports'));


class RoutePath$Impl extends __lib.NativeBase implements RoutePath, Finalizable {
    RoutePath$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RoutePath_free.cast());

    @override
    List<RoutePath> split(double advance) {
        final _splitFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Float),
            Pointer<Void> Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RoutePath_split__Advance'));
        final _advanceHandle = navigine_sdk_flutter_double_ToFfi(advance);
        final _handle = this.handle;
        final __resultHandle = _splitFfi(_handle, _advanceHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_advanceHandle);
        try  {
            return navigine_sdk_flutter_List_RoutePath_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(__resultHandle);
        }
    }


    double get length {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_RoutePath_length_get'));

        final _handle = this.handle;
        final _lengthHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(_lengthHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(_lengthHandle);
        }
    }


    List<RouteEvent> get events {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_RoutePath_events_get'));

        final _handle = this.handle;
        final _eventsHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_List_RouteEvent_FromFfi(_eventsHandle);
        }
        finally  {
            navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandle(_eventsHandle);
        }
    }


    List<LocationPoint> get points {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_RoutePath_points_get'));

        final _handle = this.handle;
        final _pointsHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_List_LocationPoint_FromFfi(_pointsHandle);
        }
        finally  {
            navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandle(_pointsHandle);
        }
    }




}

Pointer<Void> navigine_sdk_flutter_RoutePath_ToFfi(RoutePath value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_RoutePath_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

RoutePath navigine_sdk_flutter_RoutePath_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_RoutePath_CopyHandle(handle);
    final result = RoutePath$Impl(_copiedHandle);
    RoutePath$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_RoutePath_ToFfiNullable(RoutePath? value) => 
  value != null ? navigine_sdk_flutter_RoutePath_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_RoutePath_ReleaseHandle(handle);

void navigine_sdk_flutter_RoutePath_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_RoutePath_ReleaseHandle(handle);

RoutePath? navigine_sdk_flutter_RoutePath_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_RoutePath_FromFfi(handle) : null;

// End of RoutePath "private" section.

final _navigine_sdk_flutter_List_RouteEvent_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_RouteEvent_create_handle'));

final _navigine_sdk_flutter_List_RouteEvent_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_release_handle'));

final _navigine_sdk_flutter_List_RouteEvent_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_insert'));

final _navigine_sdk_flutter_List_RouteEvent_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_iterator'));

final _navigine_sdk_flutter_List_RouteEvent_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_iterator_release_handle'));

final _navigine_sdk_flutter_List_RouteEvent_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_iterator_is_valid'));

final _navigine_sdk_flutter_List_RouteEvent_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_iterator_increment'));

final _navigine_sdk_flutter_List_RouteEvent_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_RouteEvent_ToFfi(List<RouteEvent> value)  {
    final _result = _navigine_sdk_flutter_List_RouteEvent_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_RouteEvent_ToFfi(element);
        _navigine_sdk_flutter_List_RouteEvent_Insert(_result, _elementHandle);
        navigine_sdk_flutter_RouteEvent_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<RouteEvent> navigine_sdk_flutter_List_RouteEvent_FromFfi(Pointer<Void> handle)  {
    final result = List<RouteEvent>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_RouteEvent_Iterator(handle);
    while (_navigine_sdk_flutter_List_RouteEvent_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_RouteEvent_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_RouteEvent_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_RouteEvent_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_RouteEvent_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_RouteEvent_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_RouteEvent_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_create_handle_nullable'));

final _navigine_sdk_flutter_List_RouteEvent_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_release_handle_nullable'));

final _navigine_sdk_flutter_List_RouteEvent_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RouteEvent_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_RouteEvent_ToFfiNullable(List<RouteEvent>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_RouteEvent_ToFfi(value);
    final result = _navigine_sdk_flutter_List_RouteEvent_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandle(_handle);
    return result;
}

List<RouteEvent>? navigine_sdk_flutter_List_RouteEvent_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_RouteEvent_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_RouteEvent_FromFfi(_handle);
    navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_RouteEvent_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_RouteEvent_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_LocationPoint_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_LocationPoint_create_handle'));

final _navigine_sdk_flutter_List_LocationPoint_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_release_handle'));

final _navigine_sdk_flutter_List_LocationPoint_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_insert'));

final _navigine_sdk_flutter_List_LocationPoint_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_iterator'));

final _navigine_sdk_flutter_List_LocationPoint_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_iterator_release_handle'));

final _navigine_sdk_flutter_List_LocationPoint_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_iterator_is_valid'));

final _navigine_sdk_flutter_List_LocationPoint_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_iterator_increment'));

final _navigine_sdk_flutter_List_LocationPoint_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_LocationPoint_ToFfi(List<LocationPoint> value)  {
    final _result = _navigine_sdk_flutter_List_LocationPoint_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_LocationPoint_ToFfi(element);
        _navigine_sdk_flutter_List_LocationPoint_Insert(_result, _elementHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<LocationPoint> navigine_sdk_flutter_List_LocationPoint_FromFfi(Pointer<Void> handle)  {
    final result = List<LocationPoint>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_LocationPoint_Iterator(handle);
    while (_navigine_sdk_flutter_List_LocationPoint_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_LocationPoint_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_LocationPoint_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_LocationPoint_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_LocationPoint_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_LocationPoint_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_create_handle_nullable'));

final _navigine_sdk_flutter_List_LocationPoint_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_release_handle_nullable'));

final _navigine_sdk_flutter_List_LocationPoint_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_LocationPoint_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_LocationPoint_ToFfiNullable(List<LocationPoint>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_LocationPoint_ToFfi(value);
    final result = _navigine_sdk_flutter_List_LocationPoint_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandle(_handle);
    return result;
}

List<LocationPoint>? navigine_sdk_flutter_List_LocationPoint_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_LocationPoint_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_LocationPoint_FromFfi(_handle);
    navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_LocationPoint_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_LocationPoint_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_RoutePath_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_RoutePath_create_handle'));

final _navigine_sdk_flutter_List_RoutePath_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_release_handle'));

final _navigine_sdk_flutter_List_RoutePath_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_insert'));

final _navigine_sdk_flutter_List_RoutePath_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator'));

final _navigine_sdk_flutter_List_RoutePath_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_release_handle'));

final _navigine_sdk_flutter_List_RoutePath_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_is_valid'));

final _navigine_sdk_flutter_List_RoutePath_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_increment'));

final _navigine_sdk_flutter_List_RoutePath_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_RoutePath_ToFfi(List<RoutePath> value)  {
    final _result = _navigine_sdk_flutter_List_RoutePath_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_RoutePath_ToFfi(element);
        _navigine_sdk_flutter_List_RoutePath_Insert(_result, _elementHandle);
        navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<RoutePath> navigine_sdk_flutter_List_RoutePath_FromFfi(Pointer<Void> handle)  {
    final result = List<RoutePath>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_RoutePath_Iterator(handle);
    while (_navigine_sdk_flutter_List_RoutePath_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_RoutePath_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_RoutePath_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_RoutePath_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_RoutePath_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_RoutePath_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_create_handle_nullable'));

final _navigine_sdk_flutter_List_RoutePath_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_release_handle_nullable'));

final _navigine_sdk_flutter_List_RoutePath_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_RoutePath_ToFfiNullable(List<RoutePath>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_RoutePath_ToFfi(value);
    final result = _navigine_sdk_flutter_List_RoutePath_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(_handle);
    return result;
}

List<RoutePath>? navigine_sdk_flutter_List_RoutePath_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_RoutePath_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_RoutePath_FromFfi(_handle);
    navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_RoutePath_ReleaseHandleNullable(handle);
