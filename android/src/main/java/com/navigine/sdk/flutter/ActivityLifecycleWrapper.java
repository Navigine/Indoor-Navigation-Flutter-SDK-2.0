package com.navigine.sdk.flutter;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.embedding.engine.plugins.lifecycle.FlutterLifecycleAdapter;

import java.util.HashSet;
import java.util.Set;

public class ActivityLifecycleWrapper implements ActivityAware, LifecycleObserver {
    private final Set<LifecycleListener> listeners = new HashSet<>();
    private Lifecycle lifecycle;

    public boolean isForeground() {
        Boolean state = lifecycle != null && lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED);
        return state != null && state;
    }

    public void addListener(LifecycleListener listener) {
        listeners.add(listener);
    }

    public void removeListener(LifecycleListener listener) {
        listeners.remove(listener);
    }

    @Override
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        lifecycle = FlutterLifecycleAdapter.getActivityLifecycle(binding);
        lifecycle.addObserver(this);
    }

    @Override
    public void onDetachedFromActivity() {
        if (lifecycle != null) {
            lifecycle.removeObserver(this);
        }
        lifecycle = null;
    }

    @Override
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        onAttachedToActivity(binding);
    }

    @Override
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    private void onStart() {
        for (LifecycleListener listener : listeners) {
            listener.onForeground();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    private void onStop() {
        for (LifecycleListener listener : listeners) {
            listener.onBackground();
        }
    }
}
