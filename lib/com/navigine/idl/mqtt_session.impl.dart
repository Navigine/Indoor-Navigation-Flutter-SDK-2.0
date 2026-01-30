part of 'mqtt_session.dart';

// MqttSession "private" section, not exported.

final _navigine_sdk_flutter_MqttSession_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_MqttSession_copy_handle'));

final _navigine_sdk_flutter_MqttSession_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_MqttSession_release_handle'));

final _navigine_sdk_flutter_MqttSession_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_MqttSession_free');


class MqttSession$Impl extends __lib.NativeBase implements MqttSession, Finalizable {
    MqttSession$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MqttSession_free.cast());

    @override
    void connect(String server, int port, String username, String password) {
        final _connectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Int32, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>, int, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MqttSession_connect__Server_Port_Username_Password'));
        final _serverHandle = navigine_sdk_flutter_String_ToFfi(server);
        final _portHandle = navigine_sdk_flutter_int_ToFfi(port);
        final _usernameHandle = navigine_sdk_flutter_String_ToFfi(username);
        final _passwordHandle = navigine_sdk_flutter_String_ToFfi(password);
        final _handle = this.handle;
        _connectFfi(_handle, _serverHandle, _portHandle, _usernameHandle, _passwordHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_serverHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_portHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_usernameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_passwordHandle);
    }

    @override
    void setSubTopic(String subTopic) {
        final _setSubTopicFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MqttSession_setSubTopic__SubTopic'));
        final _subTopicHandle = navigine_sdk_flutter_String_ToFfi(subTopic);
        final _handle = this.handle;
        _setSubTopicFfi(_handle, _subTopicHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_subTopicHandle);
    }

    @override
    void addListener(MqttSessionListener listener) {
        final _addListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MqttSession_addListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_MqttSessionListener_ToFfi(listener);
        final _handle = this.handle;
        _addListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_MqttSessionListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeListener(MqttSessionListener listener) {
        final _removeListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MqttSession_removeListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_MqttSessionListener_ToFfi(listener);
        final _handle = this.handle;
        _removeListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_MqttSessionListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void disconnect() {
        final _disconnectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MqttSession_disconnect'));
        final _handle = this.handle;
        _disconnectFfi(_handle, );
    }

    @override
    void publish(String topic, String message) {
        final _publishFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MqttSession_publish__Topic_Message'));
        final _topicHandle = navigine_sdk_flutter_String_ToFfi(topic);
        final _messageHandle = navigine_sdk_flutter_String_ToFfi(message);
        final _handle = this.handle;
        _publishFfi(_handle, _topicHandle, _messageHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_topicHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_messageHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_MqttSession_ToFfi(MqttSession value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_MqttSession_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

MqttSession navigine_sdk_flutter_MqttSession_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_MqttSession_CopyHandle(handle);
    final result = MqttSession$Impl(_copiedHandle);
    MqttSession$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_MqttSession_ToFfiNullable(MqttSession? value) => 
  value != null ? navigine_sdk_flutter_MqttSession_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_MqttSession_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_MqttSession_ReleaseHandle(handle);

void navigine_sdk_flutter_MqttSession_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_MqttSession_ReleaseHandle(handle);

MqttSession? navigine_sdk_flutter_MqttSession_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_MqttSession_FromFfi(handle) : null;

// End of MqttSession "private" section.
