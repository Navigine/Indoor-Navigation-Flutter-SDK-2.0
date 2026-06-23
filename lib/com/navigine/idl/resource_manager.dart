import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/log_info.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_upload_listener.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'resource_manager.impl.dart';
abstract class ResourceManager implements Finalizable {

    void loadImage(String imageUrl, ResourceListener listener);

    /// working with logs
    List<LogInfo> getLogsList();

    void removeLogFile(String fileName);

    void uploadLogFile(String fileName, ResourceUploadListener listener);



}
