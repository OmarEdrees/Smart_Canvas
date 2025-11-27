import 'package:custom_quick_alert/custom_quick_alert.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:smart_canvas/app/my_app.dart';
import 'package:smart_canvas/core/di/dependancy_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://zfiimcxkisvhwlmfwshd.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpmaWltY3hraXN2aHdsbWZ3c2hkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjE3MTI0NDEsImV4cCI6MjA3NzI4ODQ0MX0.-FOY3FsIqn6K_hS-A3YqPE3v1gQKPmtKX4yExZwFY0w",
  );
  await setupDI();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
  CustomQuickAlert.initialize(navigatorKey);
}
