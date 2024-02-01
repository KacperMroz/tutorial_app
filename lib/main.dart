import 'package:flutter/material.dart';
import 'package:tutorial_project/app/app.dart';
import 'package:tutorial_project/injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppConfig();
}

Future<void> initAppConfig() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TutorialApp());
}
