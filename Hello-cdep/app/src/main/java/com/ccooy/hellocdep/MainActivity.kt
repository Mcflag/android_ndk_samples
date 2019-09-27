package com.ccooy.hellocdep

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.TextView
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        var tv = TextView(this)
        tv.text = stringFromJNI()
        setContentView(tv)
    }

    external fun stringFromJNI(): String

    companion object {
        init {
            System.loadLibrary("hello-cdep")
        }
    }
}
