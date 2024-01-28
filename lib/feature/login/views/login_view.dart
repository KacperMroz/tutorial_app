import 'package:flutter/material.dart';
import 'package:tutorial_project/theme/app_typography.dart';
import 'package:tutorial_project/theme/dimensions.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
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
            height: 150,
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
          Expanded(child: SizedBox()),
          Placeholder(
            fallbackHeight: 80,
          ),
        ],
      ),
    );
  }
}