package com.ccooy.hellojni

import android.os.Bundle
import android.view.View
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class HelloJni : AppCompatActivity() {
    companion object {
        init {
            System.loadLibrary("hello-jni")
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_hello_jni)
        val tv = findViewById<View>(R.id.hello_textview) as TextView
        tv.text = stringFromJNI()
    }

    external fun stringFromJNI(): String

    external fun unimplementedStringFromJNI(): String
}