import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/category.dart';
import 'package:navigine_sdk/com/navigine/idl/elevation_graph.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart';

/**
 *
 * Object describing location in CMS.
 *
 */
abstract class Location implements Finalizable {

    /** Method returns location elevation graph (@see ElevationGraph). */
    ElevationGraph getElevationGraph(String tag);

    /** Method returns list of available graph tags. */
    List<String> getGraphTags();

    /**
     * Method returns sublocation by id.
     * @param id - unique sublocation identifier.
     * @return - sublocation instance or null.
     */
    Sublocation getSublocationById(int id);

    /**
     * Method returns category by id.
     * @param id - unique category identifier.
     * @return - category instance or null.
     */
    Category? getCategoryById(int id);

    /** Location unique identifier. */
    int get id;
    /** Current location version. */
    int get version;
    /** Location name. */
    String get name;
    /** Location description. */
    String get descript;
    /** List of supported categories (@see Category). */
    List<Category> get categories;
    /** List of created sublocations (@see Sublocation). */
    List<Sublocation> get sublocations;
    /** Flag indicates if location has been modified by user or not */
    bool get modified;


}

// Location "private" section, not exported.

final _navigine_sdk_flutter_Location_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Location_copy_handle'));

final _navigine_sdk_flutter_Location_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Location_release_handle'));

final _navigine_sdk_flutter_Location_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Location_free');

final _navigine_sdk_flutter_Location_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_Location_create_proxy'));

final _navigine_sdk_flutter_Location_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_Location_set_ports'));


class Location$Impl extends __lib.NativeBase implements Location, Finalizable {
    Location$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Location_free.cast());

    @override
    ElevationGraph getElevationGraph(String tag) {
        final _getElevationGraphFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_Location_getElevationGraph__Tag'));
        final _tagHandle = navigine_sdk_flutter_String_ToFfi(tag);
        final _handle = this.handle;
        final __resultHandle = _getElevationGraphFfi(_handle, _tagHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_tagHandle);
        try  {
            return navigine_sdk_flutter_ElevationGraph_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_ElevationGraph_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    List<String> getGraphTags() {
        final _getGraphTagsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_Location_getGraphTags'));
        final _handle = this.handle;
        final __resultHandle = _getGraphTagsFfi(_handle, );
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
    Sublocation getSublocationById(int id) {
        final _getSublocationByIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Int32),
            Pointer<Void> Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_Location_getSublocationById__Id'));
        final _idHandle = navigine_sdk_flutter_int_ToFfi(id);
        final _handle = this.handle;
        final __resultHandle = _getSublocationByIdFfi(_handle, _idHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        try  {
            return navigine_sdk_flutter_Sublocation_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_Sublocation_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    Category? getCategoryById(int id) {
        final _getCategoryByIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Int32),
            Pointer<Void> Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_Location_getCategoryById__Id'));
        final _idHandle = navigine_sdk_flutter_int_ToFfi(id);
        final _handle = this.handle;
        final __resultHandle = _getCategoryByIdFfi(_handle, _idHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        try  {
            return navigine_sdk_flutter_Category_FromFfiNullable(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_Category_ReleaseFfiHandleNullable(__resultHandle);
        }
    }


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_id_get'));

        final _handle = this.handle;
        final _idHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_idHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        }
    }


    int get version {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_version_get'));

        final _handle = this.handle;
        final _versionHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_versionHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_versionHandle);
        }
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_nameHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        }
    }


    String get descript {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_descript_get'));

        final _handle = this.handle;
        final _descriptHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_descriptHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_descriptHandle);
        }
    }


    List<Category> get categories {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_categories_get'));

        final _handle = this.handle;
        final _categoriesHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_List_Category_FromFfi(_categoriesHandle);
        }
        finally  {
            navigine_sdk_flutter_List_Category_ReleaseFfiHandle(_categoriesHandle);
        }
    }


    List<Sublocation> get sublocations {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_sublocations_get'));

        final _handle = this.handle;
        final _sublocationsHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_List_Sublocation_FromFfi(_sublocationsHandle);
        }
        finally  {
            navigine_sdk_flutter_List_Sublocation_ReleaseFfiHandle(_sublocationsHandle);
        }
    }


    bool get modified {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Location_modified_get'));

        final _handle = this.handle;
        final _modifiedHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(_modifiedHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(_modifiedHandle);
        }
    }




}

Pointer<Void> navigine_sdk_flutter_Location_ToFfi(Location value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Location_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Location navigine_sdk_flutter_Location_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Location_CopyHandle(handle);
    final result = Location$Impl(_copiedHandle);
    Location$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Location_ToFfiNullable(Location? value) => 
  value != null ? navigine_sdk_flutter_Location_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Location_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Location_ReleaseHandle(handle);

void navigine_sdk_flutter_Location_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Location_ReleaseHandle(handle);

Location? navigine_sdk_flutter_Location_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Location_FromFfi(handle) : null;

// End of Location "private" section.

final _navigine_sdk_flutter_List_Category_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_Category_create_handle'));

final _navigine_sdk_flutter_List_Category_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Category_release_handle'));

final _navigine_sdk_flutter_List_Category_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Category_insert'));

final _navigine_sdk_flutter_List_Category_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Category_iterator'));

final _navigine_sdk_flutter_List_Category_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Category_iterator_release_handle'));

final _navigine_sdk_flutter_List_Category_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Category_iterator_is_valid'));

final _navigine_sdk_flutter_List_Category_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Category_iterator_increment'));

final _navigine_sdk_flutter_List_Category_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Category_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_Category_ToFfi(List<Category> value)  {
    final _result = _navigine_sdk_flutter_List_Category_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_Category_ToFfi(element);
        _navigine_sdk_flutter_List_Category_Insert(_result, _elementHandle);
        navigine_sdk_flutter_Category_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<Category> navigine_sdk_flutter_List_Category_FromFfi(Pointer<Void> handle)  {
    final result = List<Category>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_Category_Iterator(handle);
    while (_navigine_sdk_flutter_List_Category_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_Category_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_Category_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_Category_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_Category_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_Category_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_Category_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_Category_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Category_create_handle_nullable'));

final _navigine_sdk_flutter_List_Category_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Category_release_handle_nullable'));

final _navigine_sdk_flutter_List_Category_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Category_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_Category_ToFfiNullable(List<Category>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_Category_ToFfi(value);
    final result = _navigine_sdk_flutter_List_Category_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_Category_ReleaseFfiHandle(_handle);
    return result;
}

List<Category>? navigine_sdk_flutter_List_Category_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_Category_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_Category_FromFfi(_handle);
    navigine_sdk_flutter_List_Category_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_Category_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_Category_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_Sublocation_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_Sublocation_create_handle'));

final _navigine_sdk_flutter_List_Sublocation_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_release_handle'));

final _navigine_sdk_flutter_List_Sublocation_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_insert'));

final _navigine_sdk_flutter_List_Sublocation_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_iterator'));

final _navigine_sdk_flutter_List_Sublocation_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_iterator_release_handle'));

final _navigine_sdk_flutter_List_Sublocation_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_iterator_is_valid'));

final _navigine_sdk_flutter_List_Sublocation_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_iterator_increment'));

final _navigine_sdk_flutter_List_Sublocation_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_Sublocation_ToFfi(List<Sublocation> value)  {
    final _result = _navigine_sdk_flutter_List_Sublocation_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_Sublocation_ToFfi(element);
        _navigine_sdk_flutter_List_Sublocation_Insert(_result, _elementHandle);
        navigine_sdk_flutter_Sublocation_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<Sublocation> navigine_sdk_flutter_List_Sublocation_FromFfi(Pointer<Void> handle)  {
    final result = List<Sublocation>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_Sublocation_Iterator(handle);
    while (_navigine_sdk_flutter_List_Sublocation_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_Sublocation_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_Sublocation_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_Sublocation_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_Sublocation_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_Sublocation_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_Sublocation_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_Sublocation_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_create_handle_nullable'));

final _navigine_sdk_flutter_List_Sublocation_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_release_handle_nullable'));

final _navigine_sdk_flutter_List_Sublocation_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_Sublocation_ToFfiNullable(List<Sublocation>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_Sublocation_ToFfi(value);
    final result = _navigine_sdk_flutter_List_Sublocation_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_Sublocation_ReleaseFfiHandle(_handle);
    return result;
}

List<Sublocation>? navigine_sdk_flutter_List_Sublocation_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_Sublocation_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_Sublocation_FromFfi(_handle);
    navigine_sdk_flutter_List_Sublocation_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_Sublocation_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_Sublocation_ReleaseHandleNullable(handle);

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
