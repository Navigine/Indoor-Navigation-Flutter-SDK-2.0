package com.navigine.sdk.flutter;

import androidx.annotation.NonNull;
import com.navigine.sdk.flutter.method_handler.BaseMethodHandler;
import com.navigine.sdk.flutter.method_handler.SdkHandler;
import com.navigine.sdk.flutter.method_handler.ViewMethodHandler;
import com.navigine.sdk.flutter.view.ViewFactory;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;

import java.util.ArrayList;
import java.util.List;

/** NavigineSdkPlugin */
public class NavigineSdkPlugin implements FlutterPlugin, ActivityAware {
    private final List<BaseMethodHandler> handlers = new ArrayList<>();
    private final ActivityLifecycleWrapper lifecycle = new ActivityLifecycleWrapper();

    @Override
    public void onAttachedToEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        ViewFactory viewFactory = new ViewFactory(lifecycle);
        flutterPluginBinding.getPlatformViewRegistry().registerViewFactory(
                "flutter_navigine_view_factory",
                viewFactory
        );

        handlers.add(new SdkHandler(flutterPluginBinding));
        handlers.add(new ViewMethodHandler(flutterPluginBinding, viewFactory));
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding binding) {
        for (BaseMethodHandler handler : handlers) {
            handler.dispose();
        }
        handlers.clear();
    }

    @Override
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        lifecycle.onAttachedToActivity(binding);

        for (BaseMethodHandler handler : handlers) {
            handler.start();
        }
    }

    @Override
    public void onDetachedFromActivityForConfigChanges() {
        lifecycle.onDetachedFromActivityForConfigChanges();
    }

    @Override
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        lifecycle.onReattachedToActivityForConfigChanges(binding);
    }

    @Override
    public void onDetachedFromActivity() {
        lifecycle.onDetachedFromActivity();
    }
}
