import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'key_value_storage.impl.dart';
/// Interface for key-value storage operations, allowing storage and retrieval of various data types.
/// Referenced from [StorageManager].
abstract class KeyValueStorage implements Finalizable {

    /// Checks whether the key exists in the storage.
    /// [key] Key to check.
    /// Returns true if a value is stored under the key (regardless of type).
    ///
    /// Example:
    /// ```dart
    /// // Check if keys exist
    /// bool hasUserName = _userStorage!.contains("user_name");
    /// bool hasNonExistent = _userStorage!.contains("non_existent_key");
    /// print("Contains 'user_name': $hasUserName");
    /// print("Contains 'non_existent_key': $hasNonExistent");
    /// ```
    bool contains(String key);

    /// Returns all keys currently stored.
    /// Returns List of keys. Order is implementation-defined (not guaranteed).
    ///
    /// Example:
    /// ```dart
    /// // Get all stored keys
    /// List<String> allKeys = _userStorage!.getKeys();
    /// print("All stored keys: $allKeys");
    /// ```
    List<String> getKeys();

    /// Gets a 32-bit integer value.
    /// Returns defaultValue if the key is missing or the stored type is not int.
    /// [key] Lookup key.
    /// [defaultValue] Value to return when not found or type mismatch.
    /// Returns Stored int32 or defaultValue.
    ///
    /// Example:
    /// ```dart
    /// // Retrieve integer values with defaults
    /// int userAge = _userStorage!.getInt("user_age", 0);
    /// int loginCount = _userStorage!.getInt("login_count", 0);
    /// int nonExistentInt = _userStorage!.getInt("non_existent_int", -1);
    /// print("User age: $userAge");
    /// print("Login count: $loginCount");
    /// print("Non-existent int: $nonExistentInt");
    /// ```
    int getInt(String key, int defaultValue);

    /// Gets a 64-bit integer value.
    /// Returns defaultValue if the key is missing or the stored type is not long.
    /// [key] Lookup key.
    /// [defaultValue] Value to return when not found or type mismatch.
    /// Returns Stored int64 or defaultValue.
    ///
    /// Example:
    /// ```dart
    /// // Retrieve long values with defaults
    /// long regTimestamp = _userStorage!.getLong("registration_timestamp", 0);
    /// long lastLogin = _userStorage!.getLong("last_login_timestamp", 0);
    /// long nonExistentLong = _userStorage!.getLong("non_existent_long", -1);
    /// print("Registration timestamp: $regTimestamp");
    /// print("Last login timestamp: $lastLogin");
    /// print("Non-existent long: $nonExistentLong");
    /// ```
    int getLong(String key, int defaultValue);

    /// Gets a boolean value.
    /// Returns defaultValue if the key is missing or the stored type is not bool.
    /// [key] Lookup key.
    /// [defaultValue] Value to return when not found or type mismatch.
    /// Returns Stored bool or defaultValue.
    ///
    /// Example:
    /// ```dart
    /// // Retrieve boolean values with defaults
    /// bool isPremium = _userStorage!.getBool("is_premium", false);
    /// bool notificationsEnabled = _userStorage!.getBool(
    ///  "notifications_enabled",
    ///  true,
    /// );
    /// bool nonExistentBool = _userStorage!.getBool("non_existent_bool", false);
    /// print("Is premium: $isPremium");
    /// print("Notifications enabled: $notificationsEnabled");
    /// print("Non-existent bool: $nonExistentBool");
    /// ```
    bool getBool(String key, bool defaultValue);

    /// Gets a 32-bit floating-point value.
    /// Returns defaultValue if the key is missing or the stored type is not float.
    /// [key] Lookup key.
    /// [defaultValue] Value to return when not found or type mismatch.
    /// Returns Stored float or defaultValue.
    ///
    /// Example:
    /// ```dart
    /// // Retrieve float values with defaults
    /// float userRating = _userStorage!.getFloat("user_rating", 0.0);
    /// float temperature = _userStorage!.getFloat("temperature", 0.0);
    /// float nonExistentFloat = _userStorage!.getFloat("non_existent_float", -1.0);
    /// print("User rating: $userRating");
    /// print("Temperature: $temperature");
    /// print("Non-existent float: $nonExistentFloat");
    /// ```
    double getFloat(String key, double defaultValue);

    /// Gets a 64-bit floating-point value.
    /// Returns defaultValue if the key is missing or the stored type is not double.
    /// [key] Lookup key.
    /// [defaultValue] Value to return when not found or type mismatch.
    /// Returns Stored double or defaultValue.
    ///
    /// Example:
    /// ```dart
    /// // Retrieve double values with defaults
    /// double userLat = _userStorage!.getDouble("user_location_lat", 0.0);
    /// double userLng = _userStorage!.getDouble("user_location_lng", 0.0);
    /// double nonExistentDouble = _userStorage!.getDouble(
    ///  "non_existent_double",
    ///  -1.0,
    /// );
    /// print("User location lat: $userLat");
    /// print("User location lng: $userLng");
    /// print("Non-existent double: $nonExistentDouble");
    /// ```
    double getDouble(String key, double defaultValue);

    /// Gets a string value.
    /// Returns defaultValue if the key is missing or the stored type is not string.
    /// [key] Lookup key.
    /// [defaultValue] Value to return when not found or type mismatch.
    /// Returns Stored string or defaultValue.
    ///
    /// Example:
    /// ```dart
    /// // Retrieve string values with defaults
    /// String userName = _userStorage!.getString("user_name", "Unknown");
    /// String userEmail = _userStorage!.getString("user_email", "");
    /// String nonExistent = _userStorage!.getString(
    ///  "non_existent_key",
    ///  "default_value",
    /// );
    /// print("User name: $userName");
    /// print("User email: $userEmail");
    /// print("Non-existent key: $nonExistent");
    /// ```
    String getString(String key, String defaultValue);

    /// Stores a 32-bit integer value under the key, replacing any existing value.
    /// [key] Key to set.
    /// [value] Value to store.
    ///
    /// Example:
    /// ```dart
    /// // Store integer values
    /// _userStorage!.putInt("user_age", 25);
    /// _userStorage!.putInt("login_count", 42);
    /// print("Stored integer values");
    /// ```
    void putInt(String key, int value);

    /// Stores a 64-bit integer value under the key, replacing any existing value.
    /// [key] Key to set.
    /// [value] Value to store.
    ///
    /// Example:
    /// ```dart
    /// // Store long values
    /// _userStorage!.putLong("registration_timestamp", 1640995200000);
    /// _userStorage!.putLong(
    ///  "last_login_timestamp",
    ///  DateTime.now().millisecondsSinceEpoch,
    /// );
    /// print("Stored long values");
    /// ```
    void putLong(String key, int value);

    /// Stores a boolean value under the key, replacing any existing value.
    /// [key] Key to set.
    /// [value] Value to store.
    ///
    /// Example:
    /// ```dart
    /// // Store boolean values
    /// _userStorage!.putBool("is_premium", true);
    /// _userStorage!.putBool("notifications_enabled", false);
    /// print("Stored boolean values");
    /// ```
    void putBool(String key, bool value);

    /// Stores a 32-bit floating-point value under the key, replacing any existing value.
    /// [key] Key to set.
    /// [value] Value to store.
    ///
    /// Example:
    /// ```dart
    /// // Store float values
    /// _userStorage!.putFloat("user_rating", 4.5);
    /// _userStorage!.putFloat("temperature", 23.5);
    /// print("Stored float values");
    /// ```
    void putFloat(String key, double value);

    /// Stores a 64-bit floating-point value under the key, replacing any existing value.
    /// [key] Key to set.
    /// [value] Value to store.
    ///
    /// Example:
    /// ```dart
    /// // Store double values
    /// _userStorage!.putDouble("user_location_lat", 55.7558);
    /// _userStorage!.putDouble("user_location_lng", 37.6176);
    /// print("Stored double values");
    /// ```
    void putDouble(String key, double value);

    /// Stores a string value under the key, replacing any existing value.
    /// [key] Key to set.
    /// [value] Value to store.
    ///
    /// Example:
    /// ```dart
    /// // Store string values
    /// _userStorage!.putString("user_name", "John Doe");
    /// _userStorage!.putString("user_email", "john.doe@example.com");
    /// print("Stored string values");
    /// ```
    void putString(String key, String value);

    /// Removes a value by key. No-op if the key does not exist.
    /// [key] Key to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove specific keys
    /// _userStorage!.remove("user_age");
    /// _userStorage!.remove("non_existent_key"); // No-op
    /// print("Removed 'user_age' key");
    /// ```
    void remove(String key);

    /// Removes all entries from the storage.
    ///
    /// Example:
    /// ```dart
    /// // Clear all data
    /// _userStorage!.clear();
    /// print("Cleared all data from user storage");
    /// ```
    void clear();



}
