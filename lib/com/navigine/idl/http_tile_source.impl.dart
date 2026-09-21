part of 'http_tile_source.dart';

// HttpTileSource "private" section, not exported.

final class HttpTileSourceNative extends Struct {
    external NativeString urlTemplate;
    external Pointer<Void> headers;
    external Pointer<Void> queryParameters;
}

final HttpTileSourceNative Function(NativeString, Pointer<Void>, Pointer<Void>) _HttpTileSourceNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<HttpTileSourceNative Function(NativeString, Pointer<Void>, Pointer<Void>)>>('navigine_sdk_flutter_HttpTileSource_init')
  .asFunction<HttpTileSourceNative Function(NativeString, Pointer<Void>, Pointer<Void>)>(isLeaf: true));

extension HttpTileSourceImpl on HttpTileSource  {
    static HttpTileSource fromNative(HttpTileSourceNative native, {bool takeOwnership = true})  {
        return HttpTileSource(
          toPlatformString(native.urlTemplate, takeOwnership: takeOwnership),
          MapString_StringImpl.fromOptionalPtr(native.headers),
          MapString_StringImpl.fromOptionalPtr(native.queryParameters),
        );
    }

    static HttpTileSourceNative toNative(HttpTileSource obj)  {
        return _HttpTileSourceNativeInit(
          toNativeString(obj.urlTemplate),
          MapString_StringImpl.getNativePtr(obj.headers),
          MapString_StringImpl.getNativePtr(obj.queryParameters),
        );
    }

    static HttpTileSource? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = HttpTileSourceImpl.fromNative(ptr.cast<HttpTileSourceNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(HttpTileSource? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<HttpTileSourceNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of HttpTileSource "private" section.
