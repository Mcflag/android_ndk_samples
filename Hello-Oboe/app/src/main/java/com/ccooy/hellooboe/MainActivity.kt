package com.ccooy.hellooboe

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.MotionEvent
import android.view.View
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val view = findViewById<View>(R.id.container)

        // Set up a touch listener which calls the native sound engine
        view.setOnTouchListener {_, event ->
            if (event.action == MotionEvent.ACTION_DOWN) {
                playSound(true)
            } else if (event.action == MotionEvent.ACTION_UP) {
                playSound(false)
            } else {
                return@setOnTouchListener false
            }
            true
        }
    }

    override fun onResume() {
        super.onResume()
        if (createStream() != 0) {
            val errorString : String = getString(R.string.error_msg)
            Toast.makeText(applicationContext, errorString, Toast.LENGTH_LONG).show()
            sample_text.text = errorString
        }
    }

    override fun onPause() {
        destroyStream()
        super.onPause()
    }


    // Creates and starts Oboe stream to play audio
    private external fun createStream() : Int

    // Closes and destroys Oboe stream when app goes out of focus
    private external fun destroyStream()

    // Plays sound on user tap
    private external fun playSound(enable: Boolean) : Int

    companion object {
        // Used to load native code calling oboe on app startup.
        init {
            System.loadLibrary("hello-oboe")
        }
    }
}
