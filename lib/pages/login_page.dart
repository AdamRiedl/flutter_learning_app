import 'package:flutter/material.dart';
import 'package:flutter_learning_app/pages/home_page.dart';
import 'package:flutter_learning_app/styles/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Spacer(),
                  const Text(
                    "Login to continue please",
                    style: TextStyle(
                      color: AppColors.ternary,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Your username",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        fillColor: Color.fromARGB(117, 255, 255, 255)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Your password",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        fillColor: Color.fromARGB(117, 255, 255, 255)),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          print("clicked");
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Forgot a password')),
                  ),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          backgroundColor: AppColors.secondary),
                      child: const Text("Login"),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Or sign in with",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Sign in with google"),
                            const SizedBox(
                              width: 12,
                            ),
                            Image.asset(
                              'assets/images/google_logo.png',
                              width: 22,
                              height: 22,
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Sign in with facebook"),
                            const SizedBox(
                              width: 12,
                            ),
                            Image.asset(
                              'assets/images/facebook_logo.png',
                              width: 22,
                              height: 22,
                            ),
                          ],
                        )),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Dont have an account, ",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign up",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ))
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
