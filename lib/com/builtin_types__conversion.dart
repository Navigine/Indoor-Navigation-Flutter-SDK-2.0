

import 'dart:ffi';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';
import 'package:intl/locale.dart';

import 'package:navigine_sdk/com/_library_context.dart' as __lib;

// Blob

final _navigine_sdk_flutter_Uint8List_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64),
    Pointer<Void> Function(int)
  >('library_Blob_create_handle'));
final _navigine_sdk_flutter_Uint8List_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_Blob_release_handle'));
final _navigine_sdk_flutter_Uint8List_GetLength = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
>('library_Blob_get_length'));
final _navigine_sdk_flutter_Uint8List_GetDataPointer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Uint8> Function(Pointer<Void>),
    Pointer<Uint8> Function(Pointer<Void>)
>('library_Blob_get_data_pointer'));

Pointer<Void> navigine_sdk_flutter_Uint8List_ToFfi(Uint8List list) {
  final result = _navigine_sdk_flutter_Uint8List_CreateHandle(list.length);
  (_navigine_sdk_flutter_Uint8List_GetDataPointer(result) as Pointer<Uint8>).asTypedList(list.length).setRange(0, list.length, list);
  return result;
}

Uint8List navigine_sdk_flutter_Uint8List_FromFfi(Pointer<Void> handle) =>
  Uint8List.fromList((_navigine_sdk_flutter_Uint8List_GetDataPointer(handle) as Pointer<Uint8>).asTypedList(_navigine_sdk_flutter_Uint8List_GetLength(handle)));

void navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Uint8List_ReleaseHandle(handle);

// Int

int navigine_sdk_flutter_int_ToFfi(int value) => value;

int navigine_sdk_flutter_int_FromFfi(int handle) => handle;

void navigine_sdk_flutter_int_ReleaseFfiHandle(int handle) {}

// Double

double navigine_sdk_flutter_double_ToFfi(double value) => value;

double navigine_sdk_flutter_double_FromFfi(double handle) => handle;

void navigine_sdk_flutter_double_ReleaseFfiHandle(double handle) {}


// Boolean

int navigine_sdk_flutter_bool_ToFfi(bool value) => value ? 1 : 0;

bool navigine_sdk_flutter_bool_FromFfi(int handle) => handle != 0;

void navigine_sdk_flutter_bool_ReleaseFfiHandle(int handle) {}

// String

final _navigine_sdk_flutter_String_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Utf8>),
    Pointer<Void> Function(Pointer<Utf8>)
  >('library_std_string_create_handle'));
final _navigine_sdk_flutter_String_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_std_string_release_handle'));
final _navigine_sdk_flutter_String_GetValue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Utf8> Function(Pointer<Void>),
    Pointer<Utf8> Function(Pointer<Void>)
  >('library_std_string_get_value'));

Pointer<Void> navigine_sdk_flutter_String_ToFfi(String value) {
  final cValue = value.toNativeUtf8();
  final result = _navigine_sdk_flutter_String_CreateHandle(cValue);
  malloc.free(cValue);
  return result;
}

String navigine_sdk_flutter_String_FromFfi(Pointer<Void> handle) {
  final Pointer<Utf8> cString = _navigine_sdk_flutter_String_GetValue(handle);
  return cString.toDartString();
}

void navigine_sdk_flutter_String_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_String_ReleaseHandle(handle);

// Nullable Byte

final _byteCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int8),
    Pointer<Void> Function(int)
  >('library_Byte_create_handle_nullable'));
final _byteReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_Byte_release_handle_nullable'));
final _byteGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('library_Byte_get_value_nullable'));

Pointer<Void> byteToFfiNullable(int? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = (value);
  final result = _byteCreateHandleNullable(_handle);
  return result;
}

int? byteFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _byteGetValueNullable(handle);
  final result = (_handle);
  return result;
}

void byteReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _byteReleaseHandleNullable(handle);

// Nullable UByte

final _uByteCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint8),
    Pointer<Void> Function(int)
  >('library_UByte_create_handle_nullable'));
final _uByteReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_UByte_release_handle_nullable'));
final _uByteGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint8 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('library_UByte_get_value_nullable'));

Pointer<Void> uByteToFfiNullable(int? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = (value);
  final result = _uByteCreateHandleNullable(_handle);
  return result;
}

int? uByteFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _uByteGetValueNullable(handle);
  final result = (_handle);
  return result;
}

void uByteReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _uByteReleaseHandleNullable(handle);

// Nullable Short

final _shortCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int16),
    Pointer<Void> Function(int)
  >('library_Short_create_handle_nullable'));
final _shortReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_Short_release_handle_nullable'));
final _shortGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int16 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('library_Short_get_value_nullable'));

Pointer<Void> shortToFfiNullable(int? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = (value);
  final result = _shortCreateHandleNullable(_handle);
  return result;
}

int? shortFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _shortGetValueNullable(handle);
  final result = (_handle);
  return result;
}

void shortReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _shortReleaseHandleNullable(handle);

// Nullable UShort

final _uShortCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint16),
    Pointer<Void> Function(int)
  >('library_UShort_create_handle_nullable'));
final _uShortReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_UShort_release_handle_nullable'));
final _uShortGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint16 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('library_UShort_get_value_nullable'));

Pointer<Void> uShortToFfiNullable(int? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = (value);
  final result = _uShortCreateHandleNullable(_handle);
  return result;
}

int? uShortFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _uShortGetValueNullable(handle);
  final result = (_handle);
  return result;
}

void uShortReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _uShortReleaseHandleNullable(handle);

// Nullable Int


final _navigine_sdk_flutter_int_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int32),
    Pointer<Void> Function(int)
  >('library_Int_create_handle_nullable'));
final _navigine_sdk_flutter_int_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_Int_release_handle_nullable'));
final _navigine_sdk_flutter_int_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('library_Int_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_int_ToFfiNullable(int? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = (value);
  final result = _navigine_sdk_flutter_int_CreateHandleNullable(_handle);
  return result;
}

int? navigine_sdk_flutter_int_FromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _navigine_sdk_flutter_int_GetValueNullable(handle);
  final result = (_handle);
  return result;
}

void navigine_sdk_flutter_int_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_int_ReleaseHandleNullable(handle);

// Nullable UInt

final _uIntCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('library_UInt_create_handle_nullable'));
final _uIntReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_UInt_release_handle_nullable'));
final _uIntGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('library_UInt_get_value_nullable'));

Pointer<Void> uIntToFfiNullable(int? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = (value);
  final result = _uIntCreateHandleNullable(_handle);
  return result;
}

int? uIntFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _uIntGetValueNullable(handle);
  final result = (_handle);
  return result;
}

void uIntReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _uIntReleaseHandleNullable(handle);

// Nullable Long

final _longCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int64),
    Pointer<Void> Function(int)
  >('library_Long_create_handle_nullable'));
final _longReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_Long_release_handle_nullable'));
final _longGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('library_Long_get_value_nullable'));

Pointer<Void> longToFfiNullable(int? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = (value);
  final result = _longCreateHandleNullable(_handle);
  return result;
}

int? longFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _longGetValueNullable(handle);
  final result = (_handle);
  return result;
}

void longReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _longReleaseHandleNullable(handle);

// Nullable ULong

final _uLongCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64),
    Pointer<Void> Function(int)
  >('library_ULong_create_handle_nullable'));
final _uLongReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_ULong_release_handle_nullable'));
final _uLongGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('library_ULong_get_value_nullable'));

Pointer<Void> uLongToFfiNullable(int? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = (value);
  final result = _uLongCreateHandleNullable(_handle);
  return result;
}

int? uLongFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _uLongGetValueNullable(handle);
  final result = (_handle);
  return result;
}

void uLongReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _uLongReleaseHandleNullable(handle);

// Nullable Float

final _floatCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Float),
    Pointer<Void> Function(double)
  >('library_Float_create_handle_nullable'));
final _floatReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_Float_release_handle_nullable'));
final _floatGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('library_Float_get_value_nullable'));

Pointer<Void> floatToFfiNullable(double? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = (value);
  final result = _floatCreateHandleNullable(_handle);
  return result;
}

double? floatFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _floatGetValueNullable(handle);
  final result = (_handle);
  return result;
}

void floatReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _floatReleaseHandleNullable(handle);

// Nullable Double


final _navigine_sdk_flutter_double_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Double),
    Pointer<Void> Function(double)
  >('library_Double_create_handle_nullable'));
final _navigine_sdk_flutter_double_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_Double_release_handle_nullable'));
final _navigine_sdk_flutter_double_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Double Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('library_Double_get_value_nullable'));


Pointer<Void> navigine_sdk_flutter_double_ToFfiNullable(double? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = (value);
  final result = _navigine_sdk_flutter_double_CreateHandleNullable(_handle);
  return result;
}

double? navigine_sdk_flutter_double_FromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _navigine_sdk_flutter_double_GetValueNullable(handle);
  final result = (_handle);
  return result;
}

void navigine_sdk_flutter_double_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_double_ReleaseHandleNullable(handle);

// Nullable Boolean


final _navigine_sdk_flutter_bool_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint8),
    Pointer<Void> Function(int)
  >('library_Boolean_create_handle_nullable'));
final _navigine_sdk_flutter_bool_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_Boolean_release_handle_nullable'));
final _navigine_sdk_flutter_bool_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint8 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('library_Boolean_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_bool_ToFfiNullable(bool? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = navigine_sdk_flutter_bool_ToFfi(value);
  final result = _navigine_sdk_flutter_bool_CreateHandleNullable(_handle);
  navigine_sdk_flutter_bool_ReleaseFfiHandle(_handle);
  return result;
}

bool? navigine_sdk_flutter_bool_FromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _navigine_sdk_flutter_bool_GetValueNullable(handle);
  final result = navigine_sdk_flutter_bool_FromFfi(_handle);
  navigine_sdk_flutter_bool_ReleaseFfiHandle(_handle);
  return result;
}

void navigine_sdk_flutter_bool_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_bool_ReleaseHandleNullable(handle);

// Nullable String

final _navigine_sdk_flutter_String_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_String_create_handle_nullable'));
final _navigine_sdk_flutter_String_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_String_release_handle_nullable'));
final _navigine_sdk_flutter_String_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_String_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_String_ToFfiNullable(String? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = navigine_sdk_flutter_String_ToFfi(value);
  final result = _navigine_sdk_flutter_String_CreateHandleNullable(_handle);
  navigine_sdk_flutter_String_ReleaseFfiHandle(_handle);
  return result;
}

String? navigine_sdk_flutter_String_FromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _navigine_sdk_flutter_String_GetValueNullable(handle);
  final result = navigine_sdk_flutter_String_FromFfi(_handle);
  navigine_sdk_flutter_String_ReleaseFfiHandle(_handle);
  return result;
}

void navigine_sdk_flutter_String_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_String_ReleaseHandleNullable(handle);

// Nullable Blob

final _navigine_sdk_flutter_Uint8List_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_Blob_create_handle_nullable'));
final _navigine_sdk_flutter_Uint8List_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_Blob_release_handle_nullable'));
final _navigine_sdk_flutter_Uint8List_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_Blob_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Uint8List_ToFfiNullable(Uint8List? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = navigine_sdk_flutter_Uint8List_ToFfi(value);
  final result = _navigine_sdk_flutter_Uint8List_CreateHandleNullable(_handle);
  navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(_handle);
  return result;
}

Uint8List? navigine_sdk_flutter_Uint8List_FromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _navigine_sdk_flutter_Uint8List_GetValueNullable(handle);
  final result = navigine_sdk_flutter_Uint8List_FromFfi(_handle);
  navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(_handle);
  return result;
}

void navigine_sdk_flutter_Uint8List_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Uint8List_ReleaseHandleNullable(handle);

// List<String>
final _navigine_sdk_flutter_List_String_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_String_create_handle'));
final _navigine_sdk_flutter_List_String_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_release_handle'));
final _navigine_sdk_flutter_List_String_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_String_insert'));
final _navigine_sdk_flutter_List_String_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_sdk_flutter_List_String_iterator'));
final _navigine_sdk_flutter_List_String_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_sdk_flutter_List_String_iterator_release_handle'));
final _navigine_sdk_flutter_List_String_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
>('navigine_sdk_flutter_List_String_iterator_is_valid'));
final _navigine_sdk_flutter_List_String_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
>('navigine_sdk_flutter_List_String_iterator_increment'));
final _navigine_sdk_flutter_List_String_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
>('navigine_sdk_flutter_List_String_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_String_ToFfi(List<String> value) {
  final _result = _navigine_sdk_flutter_List_String_CreateHandle();
  for (final element in value) {
    final _elementHandle = navigine_sdk_flutter_String_ToFfi(element);
    _navigine_sdk_flutter_List_String_Insert(_result, _elementHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_elementHandle);
  }
  return _result;
}

List<String> navigine_sdk_flutter_List_String_FromFfi(Pointer<Void> handle) {
  final result = List<String>.empty(growable: true);
  final _iteratorHandle = _navigine_sdk_flutter_List_String_Iterator(handle);
  while (_navigine_sdk_flutter_List_String_IteratorIsValid(handle, _iteratorHandle) != 0) {
    final _elementHandle = _navigine_sdk_flutter_List_String_IteratorGet(_iteratorHandle);
    try {
      result.add(navigine_sdk_flutter_String_FromFfi(_elementHandle));
    } finally {
      navigine_sdk_flutter_String_ReleaseFfiHandle(_elementHandle);
    }
    _navigine_sdk_flutter_List_String_IteratorIncrement(_iteratorHandle);
  }
  _navigine_sdk_flutter_List_String_IteratorReleaseHandle(_iteratorHandle);
  return result;
}

void navigine_sdk_flutter_List_String_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_String_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_String_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_create_handle_nullable'));
final _navigine_sdk_flutter_List_String_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_release_handle_nullable'));
final _navigine_sdk_flutter_List_String_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_String_ToFfiNullable(List<String>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = navigine_sdk_flutter_List_String_ToFfi(value);
  final result = _navigine_sdk_flutter_List_String_CreateHandleNullable(_handle);
  navigine_sdk_flutter_List_String_ReleaseFfiHandle(_handle);
  return result;
}

List<String>? navigine_sdk_flutter_List_String_FromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _navigine_sdk_flutter_List_String_GetValueNullable(handle);
  final result = navigine_sdk_flutter_List_String_FromFfi(_handle);
  navigine_sdk_flutter_List_String_ReleaseFfiHandle(_handle);
  return result;
}

void navigine_sdk_flutter_List_String_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_String_ReleaseHandleNullable(handle);
