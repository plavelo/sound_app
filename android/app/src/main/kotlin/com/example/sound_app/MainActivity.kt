package com.example.sound_app

import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {
    init {
        System.loadLibrary("rust_lib_sound_app")
    }
}
