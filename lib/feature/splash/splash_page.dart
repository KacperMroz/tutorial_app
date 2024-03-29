import 'package:flutter/material.dart';
import 'package:tutorial_project/feature/login/views/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _onGoToAppPressed,
          child: const Text('Go to app'),
        ),
      ),
    );
  }

  void _onGoToAppPressed() {
    Navigator.of(context).pushReplacement(LoginPage.route());
  }
}
