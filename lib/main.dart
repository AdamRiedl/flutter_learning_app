import 'package:flutter/material.dart';
import 'package:flutter_learning_app/pages/home_page.dart';
import 'package:flutter_learning_app/pages/login_page.dart';
import 'package:flutter_learning_app/pages/main_page.dart';
import 'package:flutter_learning_app/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist', scaffoldBackgroundColor: AppColors.primary),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/main': (context) => MainPage()
      },
    );
  }
}
