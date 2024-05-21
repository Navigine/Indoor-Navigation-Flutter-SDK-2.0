package com.navigine.sdk.flutter.view;

import android.content.Context;

import androidx.annotation.NonNull;

import com.navigine.sdk.flutter.ActivityLifecycleWrapper;

import java.util.HashMap;
import java.util.Map;

import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class ViewFactory extends PlatformViewFactory {

    private final HashMap<Integer, FlutterView> views = new HashMap<>();
    private final ActivityLifecycleWrapper lifecycleWrapper;

    public ViewFactory(ActivityLifecycleWrapper lifecycleWrapper) {
        super(StandardMessageCodec.INSTANCE);
        this.lifecycleWrapper = lifecycleWrapper;
    }

    public void removeView(int id) {
        views.remove(id);
    }

    public ActivityLifecycleWrapper getLifecycle() {
        return lifecycleWrapper;
    }

    public long viewPtr(int id) {
        long res = views.get(id).getPlatformViewPtr();
        return res;
    }

    public void startView(int id) {
        views.get(id).startView();
    }

    @Override
    public PlatformView create(Context context, int viewId, Object args) {
        Map<String, String> params = (Map<String, String>) args;

        FlutterView view = new FlutterView(context, viewId, this);

        views.put(viewId, view);
        return view;
    }
}
