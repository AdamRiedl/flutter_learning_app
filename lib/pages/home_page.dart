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
        body: ListView(
          children: mockUsersFromServer(),
        ));
  }
}

_userItem() {
  return Row(
    children: [
      Image.asset(
        'assets/temp/notrealperson1.jpeg',
        width: 40,
        height: 40,
      ),
      SizedBox(
        width: 16,
      ),
      Text(
        "Pedro Ramirez",
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}

List<Widget> mockUsersFromServer() {
  List<Widget> users = [];
  for (var i = 0; i < 1000; i++) {
    users.add(_userItem());
  }
  return users;
}
