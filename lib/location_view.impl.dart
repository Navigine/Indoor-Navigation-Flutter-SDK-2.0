part of 'location_view.dart';

// LocationWindow "private" section, not exported.

LocationWindow createLocationWindow(PlatformView view) {
  final _createLocationWindowFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>), Pointer<Void> Function(Pointer<Void>)>('navigine_sdk_flutter_NavigineSdk_createLocationWindow__PlatformView'));
  final __resultHandle = _createLocationWindowFfi(view.nativePtr);
  try {
    return navigine_sdk_flutter_LocationWindow_FromFfi(__resultHandle);
  } finally {
    navigine_sdk_flutter_LocationWindow_ReleaseFfiHandle(__resultHandle);
  }
}
