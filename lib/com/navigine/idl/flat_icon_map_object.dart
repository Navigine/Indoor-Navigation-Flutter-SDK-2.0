import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/image_wrapper.dart';

abstract class FlatIconMapObject implements IconMapObject {

    bool setAngle(double angle);
    bool setAngleAnimated(double angle, double duration, AnimationType type);



}

// FlatIconMapObject "private" section, not exported.

final _navigine_sdk_flutter_FlatIconMapObject_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_FlatIconMapObject_copy_handle'));

final _navigine_sdk_flutter_FlatIconMapObject_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_FlatIconMapObject_register_finalizer'));

final _navigine_sdk_flutter_FlatIconMapObject_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_FlatIconMapObject_get_type_id'));

final _navigine_sdk_flutter_FlatIconMapObject_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_FlatIconMapObject_release_handle'));

final _navigine_sdk_flutter_FlatIconMapObject_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_FlatIconMapObject_create_proxy'));


class FlatIconMapObject$Impl extends __lib.NativeBase implements FlatIconMapObject {

    FlatIconMapObject$Impl(Pointer<Void> handle) : super(handle);

    // IconMapObject methods
    @override
    bool setPosition(LocationPoint point) {
        final _setPositionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_IconMapObject_setPosition__Point'));
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
          >('navigine_sdk_flutter_IconMapObject_setPositionAnimated__Point_Duration_Type'));
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
    bool setBitmap(ImageWrapper bitmap) {
        final _setBitmapFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_IconMapObject_setBitmap__Bitmap'));
        final _bitmapHandle = navigine_sdk_flutter_ImageWrapper_ToFfi(bitmap);
        final _handle = this.handle;
        final __resultHandle = _setBitmapFfi(_handle, _bitmapHandle);
        navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(_bitmapHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool setSize(double width, double height) {
        final _setSizeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_IconMapObject_setSize__Width_Height'));
        final _widthHandle = navigine_sdk_flutter_double_ToFfi(width);
        final _heightHandle = navigine_sdk_flutter_double_ToFfi(height);
        final _handle = this.handle;
        final __resultHandle = _setSizeFfi(_handle, _widthHandle, _heightHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_widthHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_heightHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    int getId() {
        final _getIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_IconMapObject_getId'));
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
          >('navigine_sdk_flutter_IconMapObject_getType'));
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
          >('navigine_sdk_flutter_IconMapObject_getData'));
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
          >('navigine_sdk_flutter_IconMapObject_setVisible__Visible'));
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
          >('navigine_sdk_flutter_IconMapObject_setInteractive__Interactive'));
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
          >('navigine_sdk_flutter_IconMapObject_setStyle__Style'));
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
          >('navigine_sdk_flutter_IconMapObject_setData__Data'));
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
          >('navigine_sdk_flutter_IconMapObject_setTitle__Title'));
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
    bool setAngle(double angle) {
        final _setAngleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Double),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_FlatIconMapObject_setAngle__Angle'));
        final _angleHandle = navigine_sdk_flutter_double_ToFfi(angle);
        final _handle = this.handle;
        final __resultHandle = _setAngleFfi(_handle, _angleHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_angleHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool setAngleAnimated(double angle, double duration, AnimationType type) {
        final _setAngleAnimatedFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Double, Float, Uint32),
            int Function(Pointer<Void>, double, double, int)
          >('navigine_sdk_flutter_FlatIconMapObject_setAngleAnimated__Angle_Duration_Type'));
        final _angleHandle = navigine_sdk_flutter_double_ToFfi(angle);
        final _durationHandle = navigine_sdk_flutter_double_ToFfi(duration);
        final _typeHandle = navigine_sdk_flutter_AnimationType_ToFfi(type);
        final _handle = this.handle;
        final __resultHandle = _setAngleAnimatedFfi(_handle, _angleHandle, _durationHandle, _typeHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_angleHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_durationHandle);
        navigine_sdk_flutter_AnimationType_ReleaseFfiHandle(_typeHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }




}
Pointer<Void> navigine_sdk_flutter_FlatIconMapObject_ToFfi(FlatIconMapObject value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_FlatIconMapObject_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

FlatIconMapObject navigine_sdk_flutter_FlatIconMapObject_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is FlatIconMapObject) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_FlatIconMapObject_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_FlatIconMapObject_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : FlatIconMapObject$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_FlatIconMapObject_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
    return result;
}

Pointer<Void> navigine_sdk_flutter_FlatIconMapObject_ToFfiNullable(FlatIconMapObject? value) => 
  value != null ? navigine_sdk_flutter_FlatIconMapObject_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_FlatIconMapObject_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_FlatIconMapObject_ReleaseHandle(handle);

void navigine_sdk_flutter_FlatIconMapObject_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_FlatIconMapObject_ReleaseHandle(handle);

FlatIconMapObject? navigine_sdk_flutter_FlatIconMapObject_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_FlatIconMapObject_FromFfi(handle) : null;

// End of FlatIconMapObject "private" section.
