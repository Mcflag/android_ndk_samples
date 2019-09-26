package com.ccooy.plasma;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;

public class Plasma extends AppCompatActivity {
    // Called when the activity is first created.
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Display display = getWindowManager().getDefaultDisplay();
        Point displaySize = new Point();
        display.getSize(displaySize);
        setContentView(new PlasmaView(this, displaySize.x, displaySize.y));
    }

    // load our native library
    static {
        System.loadLibrary("plasma");
    }
}

// Custom view for rendering plasma.
//
// Note: suppressing lint wrarning for ViewConstructor since it is
//       manually set from the activity and not used in any layout.
@SuppressLint("ViewConstructor")
class PlasmaView extends View {
    private Bitmap mBitmap;
    private long mStartTime;

    // implementend by libplasma.so
    private static native void renderPlasma(Bitmap bitmap, long time_ms);

    public PlasmaView(Context context, int width, int height) {
        super(context);
        mBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.RGB_565);
        mStartTime = System.currentTimeMillis();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        renderPlasma(mBitmap, System.currentTimeMillis() - mStartTime);
        canvas.drawBitmap(mBitmap, 0, 0, null);
        // force a redraw, with a different time-based pattern.
        invalidate();
    }
}
