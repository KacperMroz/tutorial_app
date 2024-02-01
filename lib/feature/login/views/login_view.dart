import 'package:flutter/material.dart';
import 'package:tutorial_project/feature/widgets/app_text_field.dart';
import 'package:tutorial_project/theme/app_colors.dart';
import 'package:tutorial_project/theme/app_typography.dart';
import 'package:tutorial_project/theme/dimensions.dart';

class LoginView extends StatelessWidget {
  const LoginView(
      {super.key,
      required this.onLoginPressed,
      required this.onRegisterPressed,
      required this.onNameChanged,
      required this.onPasswordChanged});

  final VoidCallback onRegisterPressed;
  final VoidCallback onLoginPressed;
  final Function(String) onNameChanged;
  final Function(String) onPasswordChanged;

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
          AppTextField(
            fieldName: 'E-mail',
            onChanged: onNameChanged,
          ),
          const SizedBox(
            height: 37,
          ),
          AppTextField(
            fieldName: 'Password',
            onChanged: onPasswordChanged,
          ),
          // const SizedBox(
          //   height: 37,
          // ),
          // const AppTextField(fieldName: 'Nickname'),
          const SizedBox(
            height: 90,
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
