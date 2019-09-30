package com.ccooy.hellogl2

import android.app.Activity
import android.os.Bundle

class MainActivity : Activity() {

    private var mView: GL2JNIView? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        mView = GL2JNIView(application)
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
