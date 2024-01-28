import 'package:flutter/material.dart';
import 'package:tutorial_project/app/main_route.dart';
import 'package:tutorial_project/feature/home/views/home_view.dart';
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
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.appPrimaryColor,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: HomeView(),
    );
  }
}
