import 'package:flutter/material.dart';
import 'package:tutorial_project/theme/app_typography.dart';
import 'package:tutorial_project/theme/dimensions.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key, required this.onRegisterPressed});

  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: Dimensions.paddingXXL),
          Center(
            child: Text(
              'Register Page',
              style: AppTypography.largeTitle,
            ),
          ),
          SizedBox(
            height: Dimensions.paddingXL,
          ),
          Placeholder(
            fallbackHeight: 30,
          )
        ],
      ),
    );
  }
}

//Part 1 - poprawki
//Przenieść utworzony TextField do osobnego widgetu o nazwie AppTextField
//Przenieść plik zawierający widget AppTextField do nowego folderu lib/feature/widgets
//Zmniejszyć odstęp między przyciskiem Sing in a tekstem "Dont have an account?"
//Usunąć przyciks "Go to register", a jego funkcje podpiąć pod przycisk Sign in
//Part 2 - nowe
//Rzeczy z ekranu RegisterView przeniesc na LoginView
//Na ekranie Register View dodać nowy textfield z polem nickname
//Na SplashPage zrobić nawigacje do LoginView zamiast RegisterView
//Pod tekst 'Create an account' dodać nawigacje do RegisterView