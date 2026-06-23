part of 'route_event.dart';

// RouteEvent "private" section, not exported.

final class RouteEventNative extends Struct {
    @Uint32()
    external int type;
    external Pointer<Void> turnEvent;
    external Pointer<Void> transitionEntryEvent;
    external Pointer<Void> transitionExitEvent;
    external Pointer<Void> targetReachedEvent;
}

final RouteEventNative Function(int, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>) _RouteEventNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<RouteEventNative Function(Uint32, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)>>('navigine_sdk_flutter_RouteEvent_init')
  .asFunction<RouteEventNative Function(int, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)>(isLeaf: true));

extension RouteEventImpl on RouteEvent  {
    static RouteEvent fromNative(RouteEventNative native, {bool takeOwnership = true})  {
        return RouteEvent(
          RouteEventTypeImpl.fromInt(native.type),
          TurnEventImpl.fromPointer(native.turnEvent),
          TransitionEntryEventImpl.fromPointer(native.transitionEntryEvent),
          TransitionExitEventImpl.fromPointer(native.transitionExitEvent),
          TargetReachedEventImpl.fromPointer(native.targetReachedEvent),
        );
    }

    static RouteEventNative toNative(RouteEvent obj)  {
        return _RouteEventNativeInit(
          RouteEventTypeImpl.toInt(obj.type),
          TurnEventImpl.toPointer(obj.turnEvent),
          TransitionEntryEventImpl.toPointer(obj.transitionEntryEvent),
          TransitionExitEventImpl.toPointer(obj.transitionExitEvent),
          TargetReachedEventImpl.toPointer(obj.targetReachedEvent),
        );
    }

    static RouteEvent? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = RouteEventImpl.fromNative(ptr.cast<RouteEventNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteEvent? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<RouteEventNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of RouteEvent "private" section.
