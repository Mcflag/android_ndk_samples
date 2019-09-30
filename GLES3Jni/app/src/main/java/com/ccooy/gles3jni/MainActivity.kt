package com.ccooy.gles3jni

import android.app.Activity
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : Activity() {

    private var mView: GLES3JNIView? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        mView = GLES3JNIView(application)
        setContentView(mView)
    }

    override fun onResume() {
        super.onResume()
        mView?.onResume()
    }

    override fun onPause() {
        super.onPause()
        mView?.onPause()
    }
}
