part of 'route_instruction.dart';

// RouteInstruction "private" section, not exported.

final class RouteInstructionNative extends Struct {
    @Uint32()
    external int type;
    external GlobalPointNative point;
    external Pointer<Void> sublocationId;
    @Float()
    external double distance;
    external Pointer<Void> title;
}

final RouteInstructionNative Function(int, GlobalPointNative, Pointer<Void>, double, Pointer<Void>) _RouteInstructionNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<RouteInstructionNative Function(Uint32, GlobalPointNative, Pointer<Void>, Float, Pointer<Void>)>>('navigine_sdk_flutter_RouteInstruction_init')
  .asFunction<RouteInstructionNative Function(int, GlobalPointNative, Pointer<Void>, double, Pointer<Void>)>(isLeaf: true));

extension RouteInstructionImpl on RouteInstruction  {
    static RouteInstruction fromNative(RouteInstructionNative native, {bool takeOwnership = true})  {
        return RouteInstruction(
          RouteAnnotationTypeImpl.fromInt(native.type),
          GlobalPointImpl.fromNative(native.point, takeOwnership: takeOwnership),
          toPlatformFromPointerInt32(native.sublocationId),
          native.distance,
          toPlatformFromPointerString(native.title),
        );
    }

    static RouteInstructionNative toNative(RouteInstruction obj)  {
        return _RouteInstructionNativeInit(
          RouteAnnotationTypeImpl.toInt(obj.type),
          GlobalPointImpl.toNative(obj.point),
          toNativePtrInt32(obj.sublocationId),
          obj.distance,
          toNativePtrString(obj.title),
        );
    }

    static RouteInstruction? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = RouteInstructionImpl.fromNative(ptr.cast<RouteInstructionNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteInstruction? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<RouteInstructionNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of RouteInstruction "private" section.
