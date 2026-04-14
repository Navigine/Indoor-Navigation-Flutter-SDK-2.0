package com.navigine.sdk.flutter.view;

import io.flutter.plugin.platform.PlatformView;
import android.content.Context;

import com.navigine.sdk.flutter.LifecycleListener;
import com.navigine.view.PlatformGLSurfaceView;
import com.navigine.view.internal.PlatformGLRenderer;

public class FlutterView extends PlatformGLSurfaceView implements LifecycleListener, PlatformView {
    private final int id;
    private final ViewFactory factory;
    private boolean isInitialize = false;

    private int w, h, oldw, oldh = 0;

    public FlutterView(Context context, int id, ViewFactory factory) {
        super(context);
        this.id = id;
        this.factory = factory;
        this.factory.getLifecycle().addListener(this);
    }

    @Override
    public void dispose() {
        this.factory.removeView(this.id);
    }

    public void startView() {
        this.isInitialize = true;
        this.onContextCreated();
        this.start();
        ((ViewRenderer) super.renderer).init();
        if (w != 0 && h != 0 && oldw !=0 && oldh != 0) {
            super.onSizeChanged(w, h, oldw, oldh);
        }
    }

    @Override
    protected PlatformGLRenderer createRenderer() {
        return new ViewRenderer(this);
    }

    @Override
    public void start() {
        if (this.isInitialize && this.factory.getLifecycle().isForeground()) {
            super.start();
        }
    }

    @Override
    public void onContextCreated() {
        if (this.isInitialize) {
            super.onContextCreated();
        }
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        if (this.isInitialize) {
            super.onSizeChanged(w, h, oldw, oldh);
        } else {
            this.w = w;
            this.h = h;
            this.oldw = oldw;
            this.oldh = oldh;
        }
    }

    @Override
    public void onForeground() {
        if (this.isInitialize) {
            this.start();
            this.resume();
        }
    }

    @Override
    public void onBackground() {
        if (this.isInitialize) {
            this.pause();
            this.stop();
        }
    }

    public native long getPlatformViewPtr();
}
