import 'package:flutter/material.dart';
import 'package:tutorial_project/theme/app_colors.dart';
import 'package:tutorial_project/theme/app_typography.dart';
import 'package:tutorial_project/theme/dimensions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Events',
              style: AppTypography.mediumTitle
                  .copyWith(color: AppColors.appPrimaryColor),
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            GameCard(),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            Placeholder(
              fallbackHeight: 160,
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            Placeholder(
              fallbackHeight: 160,
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            Placeholder(
              fallbackHeight: 160,
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            Placeholder(
              fallbackHeight: 160,
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            Placeholder(
              fallbackHeight: 160,
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            Placeholder(
              fallbackHeight: 160,
            ),
          ],
        ),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackHeight: 150,
    );
  }
}

//Ustawić wysokość konterenra
//Dodać padding
//Dodać główną kolumne z tekstami
//Na ostatnim miejsu w kolumnie dodać Row
//Ustawić w nim tekst i ikonke wygrana/przegrana (póki co moze byc puste, albo placeholder)
//Przy ustawianiu popatrzeć na MainAxisAlignemnt
//Olać szarą kreske miedzy tekstami