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
