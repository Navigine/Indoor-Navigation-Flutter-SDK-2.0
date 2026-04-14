import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'key_value_storage.impl.dart';
/**
 * @file com/navigine/idl/key_value_storage.dart
 * @brief @copybrief KeyValueStorage
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Interface for key-value storage operations, allowing storage and retrieval of various data types.
 *
 * Referenced from @see StorageManager "StorageManager".
 */
abstract class KeyValueStorage implements Finalizable {

    /**
     * Checks whether the key exists in the storage.
     * @param key Key to check.
     * @return true if a value is stored under the key (regardless of type).
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_contains
     *
     */
    bool contains(String key);

    /**
     * Returns all keys currently stored.
     * @return List of keys. Order is implementation-defined (not guaranteed).
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_getKeys
     *
     */
    List<String> getKeys();

    /**
     * Gets a 32-bit integer value.
     * Returns defaultValue if the key is missing or the stored type is not int.
     * @param key Lookup key.
     * @param defaultValue Value to return when not found or type mismatch.
     * @return Stored int32 or defaultValue.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_getInt
     *
     */
    int getInt(String key, int defaultValue);

    /**
     * Gets a 64-bit integer value.
     * Returns defaultValue if the key is missing or the stored type is not long.
     * @param key Lookup key.
     * @param defaultValue Value to return when not found or type mismatch.
     * @return Stored int64 or defaultValue.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_getLong
     *
     */
    int getLong(String key, int defaultValue);

    /**
     * Gets a boolean value.
     * Returns defaultValue if the key is missing or the stored type is not bool.
     * @param key Lookup key.
     * @param defaultValue Value to return when not found or type mismatch.
     * @return Stored bool or defaultValue.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_getBool
     *
     */
    bool getBool(String key, bool defaultValue);

    /**
     * Gets a 32-bit floating-point value.
     * Returns defaultValue if the key is missing or the stored type is not float.
     * @param key Lookup key.
     * @param defaultValue Value to return when not found or type mismatch.
     * @return Stored float or defaultValue.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_getFloat
     *
     */
    double getFloat(String key, double defaultValue);

    /**
     * Gets a 64-bit floating-point value.
     * Returns defaultValue if the key is missing or the stored type is not double.
     * @param key Lookup key.
     * @param defaultValue Value to return when not found or type mismatch.
     * @return Stored double or defaultValue.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_getDouble
     *
     */
    double getDouble(String key, double defaultValue);

    /**
     * Gets a string value.
     * Returns defaultValue if the key is missing or the stored type is not string.
     * @param key Lookup key.
     * @param defaultValue Value to return when not found or type mismatch.
     * @return Stored string or defaultValue.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_getString
     *
     */
    String getString(String key, String defaultValue);

    /**
     * Stores a 32-bit integer value under the key, replacing any existing value.
     * @param key Key to set.
     * @param value Value to store.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_putInt
     *
     */
    void putInt(String key, int value);

    /**
     * Stores a 64-bit integer value under the key, replacing any existing value.
     * @param key Key to set.
     * @param value Value to store.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_putLong
     *
     */
    void putLong(String key, int value);

    /**
     * Stores a boolean value under the key, replacing any existing value.
     * @param key Key to set.
     * @param value Value to store.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_putBool
     *
     */
    void putBool(String key, bool value);

    /**
     * Stores a 32-bit floating-point value under the key, replacing any existing value.
     * @param key Key to set.
     * @param value Value to store.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_putFloat
     *
     */
    void putFloat(String key, double value);

    /**
     * Stores a 64-bit floating-point value under the key, replacing any existing value.
     * @param key Key to set.
     * @param value Value to store.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_putDouble
     *
     */
    void putDouble(String key, double value);

    /**
     * Stores a string value under the key, replacing any existing value.
     * @param key Key to set.
     * @param value Value to store.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_putString
     *
     */
    void putString(String key, String value);

    /**
     * Removes a value by key. No-op if the key does not exist.
     * @param key Key to remove.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_remove
     *
     */
    void remove(String key);

    /**
     * Removes all entries from the storage.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet storage_manager_example.dart dart_KeyValueStorage_clear
     *
     */
    void clear();



}
