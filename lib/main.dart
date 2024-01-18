import 'package:flutter/material.dart';
import 'package:tutorial_project/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppConfig();
}

Future<void> initAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TutorialApp());
}
