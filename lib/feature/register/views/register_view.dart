import 'package:flutter/material.dart';
import 'package:tutorial_project/theme/app_typography.dart';
import 'package:tutorial_project/theme/dimensions.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key, required this.onRegisterPressed});

  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: Dimensions.paddingXXL,
          ),
          Center(
            child: Text(
              'AppName',
              style: AppTypography.largeTitle,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Placeholder(
            fallbackHeight: 60,
          ),
          SizedBox(
            height: Dimensions.paddingL,
          ),
          Placeholder(
            fallbackHeight: 60,
          ),
          SizedBox(
            height: Dimensions.paddingL,
          ),
          Placeholder(
            fallbackHeight: 60,
          ),
          SizedBox(
            height: Dimensions.paddingL,
          ),
          Placeholder(
            fallbackHeight: 60,
          ),
          SizedBox(
            height: Dimensions.paddingL,
          ),
          Expanded(child: SizedBox()),
          ElevatedButton(
              onPressed: onRegisterPressed, child: Text('Go to register'))
        ],
      ),
    );
  }
}
