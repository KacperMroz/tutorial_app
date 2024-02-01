import 'package:flutter/material.dart';
import 'package:tutorial_project/app/main_route.dart';
import 'package:tutorial_project/feature/home/views/home_page.dart';
import 'package:tutorial_project/feature/login/views/login_view.dart';
import 'package:tutorial_project/feature/register/views/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

  static Route route() => MainRoute(const LoginPage());
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginView(
          onLoginPressed: _onLoginPressed,
          onRegisterPressed: _onRegisterPressed),
    );
  }

  void _onLoginPressed() {
    Navigator.of(context).pushReplacement(HomePage.route());
  }

  void _onRegisterPressed() {
    Navigator.of(context).pushReplacement(RegisterPage.route());
  }
}


//Zrobic statistics page, zrobic nawigacje do niego z poziomu home page/z floating action button
//Zrobic przysick zmiany waluty: w zaleznosci od pozycji przycisku zmienia się kolor czcionki.
