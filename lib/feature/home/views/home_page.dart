// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_project/app/main_route.dart';
import 'package:tutorial_project/feature/home/views/home_view.dart';
import 'package:tutorial_project/feature/login/cubit/login_cubit.dart';
import 'package:tutorial_project/feature/statistics/views/statistics_page.dart';
import 'package:tutorial_project/feature/statistics/views/statistics_view.dart';
import 'package:tutorial_project/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  static Route route() => MainRoute(const HomePage());
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.appPrimaryColor,
        onPressed: _onStatisticsPressed,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.appPrimaryColor,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: HomeView(
        name: context.read<LoginCubit>().state.user!.name,
        password: context.read<LoginCubit>().state.user!.password,
      ),
    );
  }

  void _onStatisticsPressed() {
    Navigator.of(context).pushReplacement(StatisticsPage.route());
  }
}

//Pod przycisk FAB podpiąc nawigacje do nowego ekranu z dodawaniem nowych gier.
//W nawigacji zamiast pushAndReplacment użyć push.
//Utworzyć model GamesData, który będzie zawierał pola: GameName (string) , BuyIn (double), BuyOut (double).
//Napisać cubit do zarządzania stanem tego modelu.
//Podpiąć pod TextField tak samo jak w przypadku LoginCubit.
//Dane wyświetlić na karcie na ekranie głównym.
//Przemyśleć co zrobić w przypadku, gdy dopiero weszliśmy do aplikacji i nie mamy jeszcze danych.
