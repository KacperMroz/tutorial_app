import 'package:flutter/material.dart';
import 'package:tutorial_project/app/main_route.dart';
import 'package:tutorial_project/feature/home/views/home_page.dart';
import 'package:tutorial_project/feature/register/views/register_view.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();

  static Route route() => MainRoute(const RegisterPage());
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterView(onRegisterPressed: _onRegisterPressed),
    );
  }

  void _onRegisterPressed() {
    Navigator.of(context).pushReplacement(HomePage.route());
  }
}
