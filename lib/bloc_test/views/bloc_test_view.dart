import 'package:flutter/material.dart';
import 'package:tutorial_project/theme/app_typography.dart';

class BlocTestView extends StatelessWidget {
  const BlocTestView(
      {super.key,
      required this.value,
      required this.onIncrementPressed,
      required this.onDecrementPressed});

  final double value;
  final VoidCallback onIncrementPressed;
  final VoidCallback onDecrementPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: onIncrementPressed,
                    icon: Icon(Icons.add),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: IconButton(
                    onPressed: onDecrementPressed,
                    icon: Icon(Icons.remove),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              '$value',
              style: AppTypography.largeTitle,
            )),
          ]),
    );
  }
}
