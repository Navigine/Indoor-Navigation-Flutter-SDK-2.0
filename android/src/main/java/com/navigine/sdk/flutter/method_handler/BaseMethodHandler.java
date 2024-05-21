package com.navigine.sdk.flutter.method_handler;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodChannel;

public abstract class BaseMethodHandler implements MethodChannel.MethodCallHandler {
    private final MethodChannel methodChannel;

    public BaseMethodHandler(FlutterPlugin.FlutterPluginBinding binding, String channelName) {
        methodChannel = new MethodChannel(
            binding.getBinaryMessenger(),
            "flutter_navigine_sdk/" + channelName
        );
    }

    public void start() {
        methodChannel.setMethodCallHandler((call, result) -> {
            try {
                onMethodCall(call, result);
            } catch (Throwable e) {
                result.error(this.getClass().getSimpleName(), e.getStackTrace().toString(), null);
            }
        });
    }

    public void dispose() {
        methodChannel.setMethodCallHandler(null);
    }
}
