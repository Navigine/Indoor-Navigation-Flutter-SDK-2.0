part of 'category.dart';

// Category "private" section, not exported.

final _navigine_sdk_flutter_Category_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int32, Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(int, Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Category_create_handle'));

final _navigine_sdk_flutter_Category_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Category_release_handle'));

final _navigine_sdk_flutter_Category_GetFieldid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_Category_get_field_id'));

final _navigine_sdk_flutter_Category_GetFieldname = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Category_get_field_name'));

final _navigine_sdk_flutter_Category_GetFieldimageUrl = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Category_get_field_imageUrl'));


Pointer<Void> navigine_sdk_flutter_Category_ToFfi(Category value) {
    final _idHandle = navigine_sdk_flutter_int_ToFfi(value.id);
    final _nameHandle = navigine_sdk_flutter_String_ToFfi(value.name);
    final _imageUrlHandle = navigine_sdk_flutter_String_ToFfiNullable(value.imageUrl);
    final _result = _navigine_sdk_flutter_Category_CreateHandle(_idHandle, _nameHandle, _imageUrlHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandleNullable(_imageUrlHandle);
    return _result;
}

Category navigine_sdk_flutter_Category_FromFfi(Pointer<Void> handle) {
    final _idHandle = _navigine_sdk_flutter_Category_GetFieldid(handle);
    final _nameHandle = _navigine_sdk_flutter_Category_GetFieldname(handle);
    final _imageUrlHandle = _navigine_sdk_flutter_Category_GetFieldimageUrl(handle);
    final _result = Category(
      navigine_sdk_flutter_int_FromFfi(_idHandle),
      navigine_sdk_flutter_String_FromFfi(_nameHandle),
      navigine_sdk_flutter_String_FromFfiNullable(_imageUrlHandle),
    );
      navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
      navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
      navigine_sdk_flutter_String_ReleaseFfiHandleNullable(_imageUrlHandle);
    return _result;
}

void navigine_sdk_flutter_Category_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Category_ReleaseHandle(handle);

final _navigine_sdk_flutter_Category_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Category_create_handle_nullable'));

final _navigine_sdk_flutter_Category_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Category_release_handle_nullable'));

final _navigine_sdk_flutter_Category_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Category_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Category_ToFfiNullable(Category? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Category_ToFfi(value);
    final result = _navigine_sdk_flutter_Category_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Category_ReleaseFfiHandle(_handle);
    return result;
}

Category? navigine_sdk_flutter_Category_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Category_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Category_FromFfi(_handle);
    navigine_sdk_flutter_Category_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Category_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Category_ReleaseHandleNullable(handle);
