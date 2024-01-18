import 'package:flutter/material.dart';
import 'package:tutorial_project/app/main_route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

  static Route route() => MainRoute(const LoginPage());
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Login Page'),
      ),
    );
    //TODO create login view and implement it here
  }
}
