import 'dart:ffi';
import 'dart:math' as math;

import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

// math.Point<double> "private" section, not exported.

final class ScreenPointNative extends Struct {
  @Double()
  external double x;
  @Double()
  external double y;
}

final ScreenPointNative Function(double, double) _ScreenPointNativeInit =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookup<NativeFunction<ScreenPointNative Function(Double, Double)>>(
            'navigine_sdk_flutter_ScreenPoint_init')
        .asFunction<ScreenPointNative Function(double, double)>(isLeaf: true));

extension ScreenPointImpl on math.Point<double> {
  static math.Point<double> fromNative(ScreenPointNative native) {
    return math.Point<double>(native.x, native.y);
  }

  static ScreenPointNative toNative(math.Point<double> obj) {
    return _ScreenPointNativeInit(obj.x, obj.y);
  }

  static math.Point<double>? fromPointer(Pointer<Void> ptr, {bool needFree = true}) {
    if (ptr == nullptr) {
      return null;
    }
    final result = ScreenPointImpl.fromNative(ptr.cast<ScreenPointNative>().ref);
    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static Pointer<Void> toPointer(math.Point<double>? val) {
    if (val == null) {
      return nullptr;
    }
    final result = malloc<ScreenPointNative>();
    result.ref = ScreenPointImpl.toNative(val);
    return result.cast();
  }
}

// End of math.Point<double> "private" section.
