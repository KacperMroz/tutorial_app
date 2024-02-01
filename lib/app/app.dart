import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_project/bloc_test/cubit/bloc_test_cubit.dart';
import 'package:tutorial_project/bloc_test/views/bloc_test_page.dart';
import 'package:tutorial_project/feature/login/cubit/login_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BlocTestCubit()),
        BlocProvider(create: (context) => LoginCubit()),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Flutter Tutorial',
        home: const SplashPage(),
        theme: customThemeData,
      ),
    );
  }

  final ThemeData customThemeData = ThemeData(
    primarySwatch: AppColors.primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Lato',
    scaffoldBackgroundColor: AppColors.backgroundColor,
  );
}
