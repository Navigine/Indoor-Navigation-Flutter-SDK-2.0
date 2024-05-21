package com.navigine.sdk.flutter.method_handler;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodChannel;

import com.navigine.sdk.Navigine;
import com.navigine.sdk.flutter.view.ViewFactory;

import java.util.Map;

import io.flutter.plugin.common.MethodCall;

public class ViewMethodHandler extends BaseMethodHandler {

    private ViewFactory viewFactory_;
    public ViewMethodHandler(FlutterPlugin.FlutterPluginBinding binding, ViewFactory viewFactory) {
        super(binding, "view");
        viewFactory_ = viewFactory;
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        switch (call.method) {
            case "getViewPtr":
                getViewPtr(call, result);
                break;
            case "startView":
                startView(call, result);
                break;
            default:
                result.notImplemented();
                break;
        }
    }

    private void getViewPtr(MethodCall call, MethodChannel.Result result) {
        Map<String, Object> params = (Map<String, Object>) call.arguments;
        int id = (int) params.get("id");
        result.success(viewFactory_.viewPtr(id));
    }

    private void startView(MethodCall call, MethodChannel.Result result) {
        Map<String, Object> params = (Map<String, Object>) call.arguments;
        int id = (int) params.get("id");
        viewFactory_.startView(id);
        result.success(null);
    }
}
