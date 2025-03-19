import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_upload_listener.dart';

part 'resource_manager.impl.dart';
/**
 * @file com/navigine/idl/resource_manager.dart
 * @brief @copybrief ResourceManager
 */
abstract class ResourceManager implements Finalizable {

    void loadImage(String imageUrl, ResourceListener listener);

    /**
     * working with logs
     */
    List<String> getLogsList();

    void removeLogFile(String fileName);

    void uploadLogFile(String fileName, ResourceUploadListener listener);



}
