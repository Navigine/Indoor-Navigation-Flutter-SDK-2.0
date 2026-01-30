part of 'bounding_box.dart';

// BoundingBox "private" section, not exported.

final _navigine_sdk_flutter_BoundingBox_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_BoundingBox_create_handle'));

final _navigine_sdk_flutter_BoundingBox_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_BoundingBox_release_handle'));

final _navigine_sdk_flutter_BoundingBox_GetFieldbottomLeft = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_BoundingBox_get_field_bottomLeft'));

final _navigine_sdk_flutter_BoundingBox_GetFieldtopRight = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_BoundingBox_get_field_topRight'));


Pointer<Void> navigine_sdk_flutter_BoundingBox_ToFfi(BoundingBox value) {
    final _bottomLeftHandle = navigine_sdk_flutter_Point_ToFfi(value.bottomLeft);
    final _topRightHandle = navigine_sdk_flutter_Point_ToFfi(value.topRight);
    final _result = _navigine_sdk_flutter_BoundingBox_CreateHandle(_bottomLeftHandle, _topRightHandle);
    navigine_sdk_flutter_Point_ReleaseFfiHandle(_bottomLeftHandle);
    navigine_sdk_flutter_Point_ReleaseFfiHandle(_topRightHandle);
    return _result;
}

BoundingBox navigine_sdk_flutter_BoundingBox_FromFfi(Pointer<Void> handle) {
    final _bottomLeftHandle = _navigine_sdk_flutter_BoundingBox_GetFieldbottomLeft(handle);
    final _topRightHandle = _navigine_sdk_flutter_BoundingBox_GetFieldtopRight(handle);
    final _result = BoundingBox(
      navigine_sdk_flutter_Point_FromFfi(_bottomLeftHandle),
      navigine_sdk_flutter_Point_FromFfi(_topRightHandle),
    );
      navigine_sdk_flutter_Point_ReleaseFfiHandle(_bottomLeftHandle);
      navigine_sdk_flutter_Point_ReleaseFfiHandle(_topRightHandle);
    return _result;
}

void navigine_sdk_flutter_BoundingBox_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_BoundingBox_ReleaseHandle(handle);

final _navigine_sdk_flutter_BoundingBox_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_BoundingBox_create_handle_nullable'));

final _navigine_sdk_flutter_BoundingBox_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_BoundingBox_release_handle_nullable'));

final _navigine_sdk_flutter_BoundingBox_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_BoundingBox_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_BoundingBox_ToFfiNullable(BoundingBox? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_BoundingBox_ToFfi(value);
    final result = _navigine_sdk_flutter_BoundingBox_CreateHandleNullable(_handle);
    navigine_sdk_flutter_BoundingBox_ReleaseFfiHandle(_handle);
    return result;
}

BoundingBox? navigine_sdk_flutter_BoundingBox_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_BoundingBox_GetValueNullable(handle);
    final result = navigine_sdk_flutter_BoundingBox_FromFfi(_handle);
    navigine_sdk_flutter_BoundingBox_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_BoundingBox_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_BoundingBox_ReleaseHandleNullable(handle);
