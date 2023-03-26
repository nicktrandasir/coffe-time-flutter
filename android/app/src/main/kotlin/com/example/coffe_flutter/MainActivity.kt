package com.example.coffe_flutter
import com.yandex.mapkit.MapKitFactory
import io.flutter.embedding.android.FlutterActivity
import androidx.annotation.NonNull;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setLocale("YOUR_LOCALE") // Your preferred language. Not required, defaults to system language
        MapKitFactory.setApiKey("c0480a5a-a97d-4d1f-9d94-951130f3a0b3") // Your generated API key
        super.configureFlutterEngine(flutterEngine)
    }
}