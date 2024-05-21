package com.navigine.sdk.flutter.view;

import com.navigine.view.internal.RenderDelegate;
import com.navigine.view.internal.PlatformGLRenderer;
import javax.microedition.khronos.opengles.GL10;

public class ViewRenderer extends PlatformGLRenderer {
    private boolean isInitialize = false;
    public ViewRenderer(RenderDelegate renderDelegate) {
        super(renderDelegate);
    }

    @Override
    public void onDrawFrame(GL10 gl) {
        if (isInitialize) {
            super.onDrawFrame(gl);
        }
    }

    public void init() {
        isInitialize = true;
    }
}
