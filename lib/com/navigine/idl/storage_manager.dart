import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/key_value_storage.dart';

part 'storage_manager.impl.dart';
/**
 * @file com/navigine/idl/storage_manager.dart
 * @brief @copybrief StorageManager
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Interface for managing multiple key-value storages, providing access and lifecycle control.
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 */
abstract class StorageManager implements Finalizable {

    /**
     * Returns the list of all existing user storages.
     * @return List of storage names (implementation currently returns them in alphabetical order).
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_StorageManager_getStorageList
     *
     */
    List<String> getStorageList();

    /**
     * Returns a handle to a storage by name, creating it if it does not exist.
     * @param name Storage name (case-sensitive).
     * @return Key–value storage instance @see KeyValueStorage "KeyValueStorage"
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_StorageManager_getStorage
     *
     */
    KeyValueStorage getStorage(String name);

    /**
     * Removes the storage and all its persisted data. If the storage does not exist, this is a no-op.
     * @param name Storage name (case-sensitive).
     * @note Existing handles to this storage become invalid after removal and further operations may fail.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_StorageManager_removeStorage
     *
     */
    void removeStorage(String name);



}
