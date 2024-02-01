// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tutorial_project/app/main_route.dart';
import 'package:tutorial_project/feature/home/views/home_view.dart';
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
      body: const HomeView(),
    );
  }

  void _onStatisticsPressed() {
    Navigator.of(context).pushReplacement(StatisticsPage.route());
  }
}
