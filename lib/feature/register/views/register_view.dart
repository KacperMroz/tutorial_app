import 'package:flutter/material.dart';
import 'package:tutorial_project/theme/app_colors.dart';
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
          TextField(
              decoration: InputDecoration(
            label: Text(
              "E-mail",
              style: TextStyle(color: Colors.black),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          )),
          SizedBox(
            height: 37,
          ),
          TextField(
              decoration: InputDecoration(
            label: Text(
              "Password",
              style: TextStyle(color: Colors.black),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          )),
          SizedBox(
            height: 37,
          ),
          TextField(
              decoration: InputDecoration(
            label: Text(
              "Nickname",
              style: TextStyle(color: Colors.black),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          )),
          SizedBox(
            height: 120,
          ),
          TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: AppColors.appButtonColor,
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
              onPressed: () {},
              child: Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Dont have an account?'),
                TextButton(onPressed: () {}, child: Text('Create an account'))
              ],
            ),
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
