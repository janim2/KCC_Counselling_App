import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:kcc/app/app.dart';
import 'package:kcc/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await init();
  await bootstrap(
    () => DevicePreview(
      builder: (context) => const App(),
    ),
  );
}
