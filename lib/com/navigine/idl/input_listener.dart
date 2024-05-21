import 'dart:ffi';
import 'dart:math' as math;
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/screen_point.dart';

abstract class InputListener {
    factory InputListener(
      void Function(math.Point<double>) onViewTapLambda,
      void Function(math.Point<double>) onViewDoubleTapLambda,
      void Function(math.Point<double>) onViewLongTapLambda,
    ) => InputListener$Lambdas(
      onViewTapLambda,
      onViewDoubleTapLambda,
      onViewLongTapLambda,
    );

    void onViewTap(math.Point<double> screenPoint);
    void onViewDoubleTap(math.Point<double> screenPoint);
    void onViewLongTap(math.Point<double> screenPoint);



}

// InputListener "private" section, not exported.

final _navigine_sdk_flutter_InputListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_InputListener_release_handle'));

final _navigine_sdk_flutter_InputListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_InputListener_create_proxy'));


class InputListener$Lambdas implements InputListener {
    void Function(math.Point<double>) onViewTapLambda;
    void Function(math.Point<double>) onViewDoubleTapLambda;
    void Function(math.Point<double>) onViewLongTapLambda;

    InputListener$Lambdas(
      this.onViewTapLambda,
      this.onViewDoubleTapLambda,
      this.onViewLongTapLambda,
    );

    @override
    void onViewTap(math.Point<double> screenPoint) =>
      onViewTapLambda(screenPoint);

    @override
    void onViewDoubleTap(math.Point<double> screenPoint) =>
      onViewDoubleTapLambda(screenPoint);

    @override
    void onViewLongTap(math.Point<double> screenPoint) =>
      onViewLongTapLambda(screenPoint);


}
int _navigine_sdk_flutter_InputListener_onViewTapStatic(Object _obj, Pointer<Void> screenPoint) {
    
    try  {
        (_obj as InputListener).onViewTap(
          navigine_sdk_flutter_math_Point_double_FromFfi(screenPoint),
        );

        
    }
    finally  {
          navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(screenPoint);

    }
    return 0;
}

int _navigine_sdk_flutter_InputListener_onViewDoubleTapStatic(Object _obj, Pointer<Void> screenPoint) {
    
    try  {
        (_obj as InputListener).onViewDoubleTap(
          navigine_sdk_flutter_math_Point_double_FromFfi(screenPoint),
        );

        
    }
    finally  {
          navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(screenPoint);

    }
    return 0;
}

int _navigine_sdk_flutter_InputListener_onViewLongTapStatic(Object _obj, Pointer<Void> screenPoint) {
    
    try  {
        (_obj as InputListener).onViewLongTap(
          navigine_sdk_flutter_math_Point_double_FromFfi(screenPoint),
        );

        
    }
    finally  {
          navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(screenPoint);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_InputListener_ToFfi(InputListener value) {
    final result = _navigine_sdk_flutter_InputListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_InputListener_onViewTapStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_InputListener_onViewDoubleTapStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_InputListener_onViewLongTapStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_InputListener_ToFfiNullable(InputListener? value) => 
  value != null ? navigine_sdk_flutter_InputListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_InputListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_InputListener_ReleaseHandle(handle);

void navigine_sdk_flutter_InputListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_InputListener_ReleaseHandle(handle);

// End of InputListener "private" section.
