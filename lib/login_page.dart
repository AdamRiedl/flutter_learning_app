import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 184, 224, 243),
        body: Column(
          children: [
            const Text(
              "login to continue please",
              style: TextStyle(
                  color: Color.fromARGB(255, 29, 14, 231),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            const TextField(
              decoration: InputDecoration(
                  hintText: "Your username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  filled: true,
                  fillColor: Color.fromARGB(117, 255, 255, 255)),
            ),
            const TextField(
              decoration: InputDecoration(hintText: "Your password"),
            ),
            TextButton(
                onPressed: () {
                  print("clicked");
                },
                child: const Text('Forgot a password')),
            ElevatedButton(onPressed: () {}, child: const Text("Login")),
            const Text("Or sign in with"),
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    const Text("Sign in with google"),
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
                  children: [
                    const Text("Sign in with facebook"),
                    Image.asset(
                      'assets/images/facebook_logo.png',
                      width: 22,
                      height: 22,
                    ),
                  ],
                )),
            Row(
              children: [
                const Text("Dont have an account, "),
                TextButton(onPressed: () {}, child: const Text("Sign up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
