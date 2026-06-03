import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/key_value_storage.dart';

part 'storage_manager.impl.dart';
/// Interface for managing multiple key-value storages, providing access and lifecycle control.
/// Referenced from [NavigineSdk].
abstract class StorageManager implements Finalizable {

    /// Returns the list of all existing user storages.
    /// Returns List of storage names (implementation currently returns them in alphabetical order).
    ///
    /// Example:
    /// ```dart
    /// // Get list of all existing storages
    /// List<String> storageList = _storageManager!.getStorageList();
    /// print("Existing storages: $storageList");
    /// ```
    List<String> getStorageList();

    /// Returns a handle to a storage by name, creating it if it does not exist.
    /// [name] Storage name (case-sensitive).
    /// Returns Key–value storage instance [KeyValueStorage]
    ///
    /// Example:
    /// ```dart
    /// // Get or create different storage instances
    /// _userStorage = _storageManager!.getStorage("user_preferences");
    /// _appStorage = _storageManager!.getStorage("app_settings");
    /// _cacheStorage = _storageManager!.getStorage("cache");
    /// ```
    KeyValueStorage getStorage(String name);

    /// Removes the storage and all its persisted data. If the storage does not exist, this is a no-op.
    /// **Note:** Existing handles to this storage become invalid after removal and further operations may fail.
    /// [name] Storage name (case-sensitive).
    ///
    /// Example:
    /// ```dart
    /// // Remove storage and all its data
    /// _storageManager!.removeStorage("test_storage");
    /// print("Removed test storage");
    /// ```
    void removeStorage(String name);



}
