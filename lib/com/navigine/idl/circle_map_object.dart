import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';

abstract class CircleMapObject implements MapObject {

    bool setPosition(LocationPoint point);
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type);
    bool setColor(double red, double green, double blue, double alpha);
    bool setRadius(double radius);



}

// CircleMapObject "private" section, not exported.

final _navigine_sdk_flutter_CircleMapObject_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_CircleMapObject_copy_handle'));

final _navigine_sdk_flutter_CircleMapObject_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_CircleMapObject_register_finalizer'));

final _navigine_sdk_flutter_CircleMapObject_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_CircleMapObject_get_type_id'));

final _navigine_sdk_flutter_CircleMapObject_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_CircleMapObject_release_handle'));

final _navigine_sdk_flutter_CircleMapObject_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_CircleMapObject_create_proxy'));


class CircleMapObject$Impl extends __lib.NativeBase implements CircleMapObject {

    CircleMapObject$Impl(Pointer<Void> handle) : super(handle);

    // MapObject methods
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
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }


    @override
    bool setPosition(LocationPoint point) {
        final _setPositionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_CircleMapObject_setPosition__Point'));
        final _pointHandle = navigine_sdk_flutter_LocationPoint_ToFfi(point);
        final _handle = this.handle;
        final __resultHandle = _setPositionFfi(_handle, _pointHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type) {
        final _setPositionAnimatedFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>, Float, Uint32),
            int Function(Pointer<Void>, Pointer<Void>, double, int)
          >('navigine_sdk_flutter_CircleMapObject_setPositionAnimated__Point_Duration_Type'));
        final _pointHandle = navigine_sdk_flutter_LocationPoint_ToFfi(point);
        final _durationHandle = navigine_sdk_flutter_double_ToFfi(duration);
        final _typeHandle = navigine_sdk_flutter_AnimationType_ToFfi(type);
        final _handle = this.handle;
        final __resultHandle = _setPositionAnimatedFfi(_handle, _pointHandle, _durationHandle, _typeHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_durationHandle);
        navigine_sdk_flutter_AnimationType_ReleaseFfiHandle(_typeHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool setColor(double red, double green, double blue, double alpha) {
        final _setColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_CircleMapObject_setColor__Red_Green_Blue_Alpha'));
        final _redHandle = navigine_sdk_flutter_double_ToFfi(red);
        final _greenHandle = navigine_sdk_flutter_double_ToFfi(green);
        final _blueHandle = navigine_sdk_flutter_double_ToFfi(blue);
        final _alphaHandle = navigine_sdk_flutter_double_ToFfi(alpha);
        final _handle = this.handle;
        final __resultHandle = _setColorFfi(_handle, _redHandle, _greenHandle, _blueHandle, _alphaHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_redHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_greenHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_blueHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_alphaHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool setRadius(double radius) {
        final _setRadiusFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_CircleMapObject_setRadius__Radius'));
        final _radiusHandle = navigine_sdk_flutter_double_ToFfi(radius);
        final _handle = this.handle;
        final __resultHandle = _setRadiusFfi(_handle, _radiusHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_radiusHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }




}
Pointer<Void> navigine_sdk_flutter_CircleMapObject_ToFfi(CircleMapObject value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_CircleMapObject_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

CircleMapObject navigine_sdk_flutter_CircleMapObject_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is CircleMapObject) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_CircleMapObject_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_CircleMapObject_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : CircleMapObject$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_CircleMapObject_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
    return result;
}

Pointer<Void> navigine_sdk_flutter_CircleMapObject_ToFfiNullable(CircleMapObject? value) => 
  value != null ? navigine_sdk_flutter_CircleMapObject_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_CircleMapObject_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_CircleMapObject_ReleaseHandle(handle);

void navigine_sdk_flutter_CircleMapObject_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_CircleMapObject_ReleaseHandle(handle);

CircleMapObject? navigine_sdk_flutter_CircleMapObject_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_CircleMapObject_FromFfi(handle) : null;

// End of CircleMapObject "private" section.