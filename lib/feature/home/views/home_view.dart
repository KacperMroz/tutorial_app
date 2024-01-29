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
              'Events:',
              style: AppTypography.mediumTitle
                  .copyWith(color: AppColors.appPrimaryColor),
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            GameCard(
              gameName: '123',
              buyIn: '120',
              buyOut: '150',
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            GameCard(
              gameName: '123456',
              buyIn: '150',
              buyOut: '180',
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            GameCard(
              gameName: '123456',
              buyIn: '150',
              buyOut: '180',
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            GameCard(
              gameName: '123456',
              buyIn: '150',
              buyOut: '180',
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            GameCard(
              gameName: '123456',
              buyIn: '150',
              buyOut: '180',
            ),
            SizedBox(
              height: Dimensions.paddingML,
            ),
            GameCard(
              gameName: '123456',
              buyIn: '150',
              buyOut: '180',
            ),
          ],
        ),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard(
      {super.key,
      required this.gameName,
      required this.buyIn,
      required this.buyOut});

  final String gameName;
  final String buyIn;
  final String buyOut;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        height: 161,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(gameName),
          SizedBox(
            height: 5,
          ),
          Text('Buy in $buyIn'),
          SizedBox(
            height: 5,
          ),
          Text('Buy out $buyOut'),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Created on xxx'),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  'LOSS',
                  style: AppTypography.smallText.copyWith(color: Colors.white),
                ),
              )
            ],
          )
        ]));
  }
}

//Ustawić wysokość konterenra
//Dodać padding
//Dodać główną kolumne z tekstami
//Na ostatnim miejsu w kolumnie dodać Row
//Ustawić w nim tekst i ikonke wygrana/przegrana (póki co moze byc puste, albo placeholder)
//Przy ustawianiu popatrzeć na MainAxisAlignemnt
//Olać szarą kreske miedzy tekstami