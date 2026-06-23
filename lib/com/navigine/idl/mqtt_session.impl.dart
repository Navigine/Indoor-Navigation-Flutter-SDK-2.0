part of 'mqtt_session.dart';

// MqttSession "private" section, not exported.

final _navigine_sdk_flutter_MqttSession_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_MqttSession_free');


class MqttSession$Impl implements MqttSession, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MqttSession_free.cast());

    MqttSession$Impl.fromExternalPtr(this.ptr);

    @internal
    MqttSession$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory MqttSession$Impl.fromNativePtr(Pointer<Void> ptr) =>
        MqttSession$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(MqttSession? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as MqttSession$Impl).ptr;
    }

    static MqttSession? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return MqttSession$Impl.fromNativePtr(ptr);
    }

    @override
    void connect(String server, int port, String username, String password) {
        final _connectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, Int32, NativeString, NativeString),
            void Function(Pointer<Void>, NativeString, int, NativeString, NativeString)
          >('navigine_sdk_flutter_MqttSession_connect__Server_Port_Username_Password'));
        _connectFfi(this.ptr, toNativeString(server), port, toNativeString(username), toNativeString(password));
        exception.checkCallResult();
    }

    @override
    void setSubTopic(String subTopic) {
        final _setSubTopicFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_MqttSession_setSubTopic__SubTopic'));
        _setSubTopicFfi(this.ptr, toNativeString(subTopic));
        exception.checkCallResult();
    }

    @override
    void addListener(MqttSessionListener listener) {
        final _addListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MqttSession_addListener__Listener'));
        _addListenerFfi(this.ptr, MqttSessionListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeListener(MqttSessionListener listener) {
        final _removeListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MqttSession_removeListener__Listener'));
        _removeListenerFfi(this.ptr, MqttSessionListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void disconnect() {
        final _disconnectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MqttSession_disconnect'));
        _disconnectFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void publish(String topic, String message) {
        final _publishFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, NativeString),
            void Function(Pointer<Void>, NativeString, NativeString)
          >('navigine_sdk_flutter_MqttSession_publish__Topic_Message'));
        _publishFfi(this.ptr, toNativeString(topic), toNativeString(message));
        exception.checkCallResult();
    }




}

// End of MqttSession "private" section.
