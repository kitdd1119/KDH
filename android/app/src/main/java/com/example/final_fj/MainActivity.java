package com.example.final_fj;

import io.flutter.embedding.android.FlutterFragmentActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;
import com.baseflow.geolocator.GeolocatorPlugin; // 추가

public class MainActivity extends FlutterFragmentActivity {
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        GeolocatorPlugin.registerWith(flutterEngine.getDartExecutor().getBinaryMessenger()); // 추가
    }
}