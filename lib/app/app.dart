import 'package:flutter/material.dart';
import 'package:tutorial_project/feature/splash/splash_page.dart';
import 'package:tutorial_project/theme/app_colors.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class TutorialApp extends StatefulWidget {
  const TutorialApp({Key? key}) : super(key: key);

  @override
  State<TutorialApp> createState() => _TutorialAppState();
}

class _TutorialAppState extends State<TutorialApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Tutorial',
      home: const SplashPage(),
      theme: customThemeData,
    );
  }

  final ThemeData customThemeData = ThemeData(
    primarySwatch: AppColors.primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Lato',
    scaffoldBackgroundColor: AppColors.backgroundColor,
  );
}
