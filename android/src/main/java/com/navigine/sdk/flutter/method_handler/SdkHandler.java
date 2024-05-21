package com.navigine.sdk.flutter.method_handler;

import com.navigine.sdk.Navigine;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

import java.util.HashMap;
import java.util.Map;

public class SdkHandler extends BaseMethodHandler {
    private FlutterPlugin.FlutterPluginBinding binding_;
    public SdkHandler(FlutterPlugin.FlutterPluginBinding binding) {
        super(binding, "navigine_sdk");
        binding_ = binding;
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        switch (call.method) {
            case "init":
                initSdk(call, result);
                break;
            default:
                result.notImplemented();
                break;
        }
    }

    private void initSdk(MethodCall call, MethodChannel.Result result) {
        Navigine.initialize(binding_.getApplicationContext(), "navigine");
        result.success(null);
    }
}
