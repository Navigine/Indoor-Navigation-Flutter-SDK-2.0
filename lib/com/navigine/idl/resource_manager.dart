import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_upload_listener.dart';

abstract class ResourceManager implements Finalizable {

    void loadImage(String imageUrl, ResourceListener listener);

    /** working with logs */
    List<String> getLogsList();

    void removeLogFile(String fileName);

    void uploadLogFile(String fileName, ResourceUploadListener listener);



}

// ResourceManager "private" section, not exported.

final _navigine_sdk_flutter_ResourceManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ResourceManager_copy_handle'));

final _navigine_sdk_flutter_ResourceManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ResourceManager_release_handle'));

final _navigine_sdk_flutter_ResourceManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ResourceManager_free');

final _navigine_sdk_flutter_ResourceManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_ResourceManager_create_proxy'));

final _navigine_sdk_flutter_ResourceManager_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_ResourceManager_set_ports'));


class ResourceManager$Impl extends __lib.NativeBase implements ResourceManager, Finalizable {
    ResourceManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ResourceManager_free.cast());

    @override
    void loadImage(String imageUrl, ResourceListener listener) {
        final _loadImageFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ResourceManager_loadImage__ImageUrl_Listener'));
        final _imageUrlHandle = navigine_sdk_flutter_String_ToFfi(imageUrl);
        final _listenerHandle = navigine_sdk_flutter_ResourceListener_ToFfi(listener);
        final _handle = this.handle;
        _loadImageFfi(_handle, _imageUrlHandle, _listenerHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_imageUrlHandle);
        navigine_sdk_flutter_ResourceListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    List<String> getLogsList() {
        final _getLogsListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_ResourceManager_getLogsList'));
        final _handle = this.handle;
        final __resultHandle = _getLogsListFfi(_handle, );
        try  {
            return navigine_sdk_flutter_List_String_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_List_String_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    void removeLogFile(String fileName) {
        final _removeLogFileFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ResourceManager_removeLogFile__FileName'));
        final _fileNameHandle = navigine_sdk_flutter_String_ToFfi(fileName);
        final _handle = this.handle;
        _removeLogFileFfi(_handle, _fileNameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_fileNameHandle);
    }

    @override
    void uploadLogFile(String fileName, ResourceUploadListener listener) {
        final _uploadLogFileFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ResourceManager_uploadLogFile__FileName_Listener'));
        final _fileNameHandle = navigine_sdk_flutter_String_ToFfi(fileName);
        final _listenerHandle = navigine_sdk_flutter_ResourceUploadListener_ToFfi(listener);
        final _handle = this.handle;
        _uploadLogFileFfi(_handle, _fileNameHandle, _listenerHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_fileNameHandle);
        navigine_sdk_flutter_ResourceUploadListener_ReleaseFfiHandle(_listenerHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_ResourceManager_ToFfi(ResourceManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_ResourceManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

ResourceManager navigine_sdk_flutter_ResourceManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_ResourceManager_CopyHandle(handle);
    final result = ResourceManager$Impl(_copiedHandle);
    ResourceManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_ResourceManager_ToFfiNullable(ResourceManager? value) => 
  value != null ? navigine_sdk_flutter_ResourceManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ResourceManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ResourceManager_ReleaseHandle(handle);

void navigine_sdk_flutter_ResourceManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ResourceManager_ReleaseHandle(handle);

ResourceManager? navigine_sdk_flutter_ResourceManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_ResourceManager_FromFfi(handle) : null;

// End of ResourceManager "private" section.

final _navigine_sdk_flutter_List_String_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_String_create_handle'));

final _navigine_sdk_flutter_List_String_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
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

Pointer<Void> navigine_sdk_flutter_List_String_ToFfi(List<String> value)  {
    final _result = _navigine_sdk_flutter_List_String_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_String_ToFfi(element);
        _navigine_sdk_flutter_List_String_Insert(_result, _elementHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<String> navigine_sdk_flutter_List_String_FromFfi(Pointer<Void> handle)  {
    final result = List<String>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_String_Iterator(handle);
    while (_navigine_sdk_flutter_List_String_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_String_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_String_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_String_IteratorIncrement(_iteratorHandle);
    }
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

Pointer<Void> navigine_sdk_flutter_List_String_ToFfiNullable(List<String>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_String_ToFfi(value);
    final result = _navigine_sdk_flutter_List_String_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_String_ReleaseFfiHandle(_handle);
    return result;
}

List<String>? navigine_sdk_flutter_List_String_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_String_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_String_FromFfi(_handle);
    navigine_sdk_flutter_List_String_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_String_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_String_ReleaseHandleNullable(handle);
