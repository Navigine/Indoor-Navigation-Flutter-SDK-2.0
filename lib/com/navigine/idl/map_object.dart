import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';

/**
 *
 * Object on map created and managing by user
 * Could be handled in `pickMapObjectAt` method (@see LocationWindow)
 *
 */
abstract class MapObject implements Finalizable {

    /** Unique identifier of map object */
    int getId();

    /**
     * Map object type (@see MapObjectType).
     * Map object could be casted to the specified type.
     */
    MapObjectType getType();

    /** Any kind of user's data */
    Uint8List getData();

    /** Method is used to change visibility of map object. */
    bool setVisible(bool visible);

    /**
     * Method is used to interactive property
     * If True - map object could be handled in `pickMapObjectAt` method.
     */
    bool setInteractive(bool interactive);

    /** Method is used to apply custom styling to map object. */
    bool setStyle(String style);

    /** Method is used to set any kind of user's data */
    void setData(Uint8List data);

    /**
     * Method is used to set object title.
     * Title will shown on LocationView.
     */
    bool setTitle(String title);



}

// MapObject "private" section, not exported.

final _navigine_sdk_flutter_MapObject_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapObject_copy_handle'));

final _navigine_sdk_flutter_MapObject_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapObject_release_handle'));

final _navigine_sdk_flutter_MapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_MapObject_free');

final _navigine_sdk_flutter_MapObject_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_MapObject_create_proxy'));

final _navigine_sdk_flutter_MapObject_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_MapObject_set_ports'));


class MapObject$Impl extends __lib.NativeBase implements MapObject, Finalizable {
    MapObject$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MapObject_free.cast());

    @override
    int getId() {
        final _getIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MapObject_getId'));
        final _handle = this.handle;
        final __resultHandle = _getIdFfi(_handle, );
        try  {
            return navigine_sdk_flutter_int_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    MapObjectType getType() {
        final _getTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MapObject_getType'));
        final _handle = this.handle;
        final __resultHandle = _getTypeFfi(_handle, );
        try  {
            return navigine_sdk_flutter_MapObjectType_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_MapObjectType_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    Uint8List getData() {
        final _getDataFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MapObject_getData'));
        final _handle = this.handle;
        final __resultHandle = _getDataFfi(_handle, );
        try  {
            return navigine_sdk_flutter_Uint8List_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool setVisible(bool visible) {
        final _setVisibleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_MapObject_setVisible__Visible'));
        final _visibleHandle = navigine_sdk_flutter_bool_ToFfi(visible);
        final _handle = this.handle;
        final __resultHandle = _setVisibleFfi(_handle, _visibleHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_visibleHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool setInteractive(bool interactive) {
        final _setInteractiveFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_MapObject_setInteractive__Interactive'));
        final _interactiveHandle = navigine_sdk_flutter_bool_ToFfi(interactive);
        final _handle = this.handle;
        final __resultHandle = _setInteractiveFfi(_handle, _interactiveHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_interactiveHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool setStyle(String style) {
        final _setStyleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MapObject_setStyle__Style'));
        final _styleHandle = navigine_sdk_flutter_String_ToFfi(style);
        final _handle = this.handle;
        final __resultHandle = _setStyleFfi(_handle, _styleHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_styleHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    void setData(Uint8List data) {
        final _setDataFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MapObject_setData__Data'));
        final _dataHandle = navigine_sdk_flutter_Uint8List_ToFfi(data);
        final _handle = this.handle;
        _setDataFfi(_handle, _dataHandle);
        navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(_dataHandle);
    }

    @override
    bool setTitle(String title) {
        final _setTitleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MapObject_setTitle__Title'));
        final _titleHandle = navigine_sdk_flutter_String_ToFfi(title);
        final _handle = this.handle;
        final __resultHandle = _setTitleFfi(_handle, _titleHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_titleHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }




}

Pointer<Void> navigine_sdk_flutter_MapObject_ToFfi(MapObject value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_MapObject_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

MapObject navigine_sdk_flutter_MapObject_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_MapObject_CopyHandle(handle);
    final result = MapObject$Impl(_copiedHandle);
    MapObject$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_MapObject_ToFfiNullable(MapObject? value) => 
  value != null ? navigine_sdk_flutter_MapObject_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_MapObject_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_MapObject_ReleaseHandle(handle);

void navigine_sdk_flutter_MapObject_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_MapObject_ReleaseHandle(handle);

MapObject? navigine_sdk_flutter_MapObject_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_MapObject_FromFfi(handle) : null;

// End of MapObject "private" section.
