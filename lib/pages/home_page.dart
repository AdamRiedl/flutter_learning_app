import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learning_app/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: const Text(
          'Flutter AppBar',
          style: TextStyle(color: Colors.white),
        ),
        actions: [Icon(Icons.location_city_rounded)],
      ),
      body: Container(),
    );
  }
}
