import 'package:flutter/material.dart';
import 'package:tutorial_project/app/main_route.dart';
import 'package:tutorial_project/feature/statistics/views/statistics_view.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
  static Route route() => MainRoute(const StatisticsPage());
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StatisticsView(),
    );
  }
}
