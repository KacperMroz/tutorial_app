import 'package:flutter/material.dart';
import 'package:tutorial_project/feature/widgets/app_text_field.dart';
import 'package:tutorial_project/theme/app_colors.dart';
import 'package:tutorial_project/theme/app_typography.dart';
import 'package:tutorial_project/theme/dimensions.dart';

class LoginView extends StatelessWidget {
  const LoginView(
      {super.key,
      required this.onLoginPressed,
      required this.onRegisterPressed});

  final VoidCallback onRegisterPressed;
  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: Dimensions.paddingXXL,
          ),
          const Center(
            child: Text(
              'AppName',
              style: AppTypography.largeTitle,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const AppTextField(fieldName: 'E-mail'),
          const SizedBox(
            height: 37,
          ),
          const AppTextField(fieldName: 'Password'),
          const SizedBox(
            height: 37,
          ),
          const AppTextField(fieldName: 'Nickname'),
          const SizedBox(
            height: 120,
          ),
          TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: AppColors.appButtonColor,
                  textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
              onPressed: onLoginPressed,
              child: const Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 17,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Dont have an account?'),
                TextButton(
                    onPressed: onRegisterPressed,
                    child: const Text('Create an account'))
              ],
            ),
          ),
          const SizedBox(
            height: Dimensions.paddingL,
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
