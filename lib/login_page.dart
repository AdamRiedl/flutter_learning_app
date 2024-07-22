import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Login to continue please",
                style: TextStyle(
                  color: Color(0xff9BA2FF),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Your username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
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
                        borderRadius: BorderRadius.all(Radius.circular(20))),
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
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Login"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffEAD94C)),
                ),
              ),
              const SizedBox(
                height: 62,
              ),
              const Text(
                "Or sign in with",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
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
              ElevatedButton(
                  onPressed: () {},
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
                        style: TextStyle(decoration: TextDecoration.underline),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
