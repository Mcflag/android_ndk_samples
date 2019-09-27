package com.ccooy.hellolibs;

import android.os.Bundle;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        TextView tv = new TextView(this);
        tv.setText(stringFromJNI());
        setContentView(tv);
    }

    public native String stringFromJNI();

    static {
        System.loadLibrary("hello-libs");
    }

}
