import 'package:flutter/material.dart';
import 'package:tutorial_project/theme/app_colors.dart';
import 'package:tutorial_project/theme/app_typography.dart';
import 'package:tutorial_project/theme/dimensions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.name, required this.password});

  final String name;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Events for $name:',
              style: AppTypography.mediumTitle
                  .copyWith(color: AppColors.appPrimaryColor),
            ),
            Text(
              'Password: $password',
              style: AppTypography.mediumTitle
                  .copyWith(color: AppColors.appPrimaryColor),
            ),
            const SizedBox(
              height: Dimensions.paddingML,
            ),
            const GameCard(
              gameName: '123',
              buyIn: '120',
              buyOut: '150',
            ),
            const SizedBox(
              height: Dimensions.paddingML,
            ),
            const GameCard(
              gameName: '123456',
              buyIn: '150',
              buyOut: '180',
            ),
            const SizedBox(
              height: Dimensions.paddingML,
            ),
            const GameCard(
              gameName: '123456',
              buyIn: '150',
              buyOut: '180',
            ),
            const SizedBox(
              height: Dimensions.paddingML,
            ),
            const GameCard(
              gameName: '123456',
              buyIn: '150',
              buyOut: '180',
            ),
            const SizedBox(
              height: Dimensions.paddingML,
            ),
            const GameCard(
              gameName: '123456',
              buyIn: '150',
              buyOut: '180',
            ),
            const SizedBox(
              height: Dimensions.paddingML,
            ),
            const GameCard(
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
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        height: 161,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(gameName),
          const SizedBox(
            height: 5,
          ),
          Text('Buy in $buyIn'),
          const SizedBox(
            height: 5,
          ),
          Text('Buy out $buyOut'),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Created on xxx'),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                decoration: const BoxDecoration(
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
