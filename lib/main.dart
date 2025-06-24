import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'loginPage.dart';
import 'signUp.dart';

void main() {
  runApp(const MyApp()); // Run your MyApp widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // You need a Scaffold here
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                ), // distance from top edge
                child: Lottie.asset('assets/animations/login.json'),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Hello',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Welcome to the little Drop, where\n  you manage your daily tasks.",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            SizedBox(height: 40),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  print('Login button pressed');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Sign Up button
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  );
                },
                child: Text("Sign Up", style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 40),
            Text("sign up with", style: TextStyle(color: Colors.grey)),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/face.png', width: 40, height: 40),
                SizedBox(width: 20), // ⬅️ space between logos
                Image.asset('images/insta.png', width: 40, height: 40),
                SizedBox(width: 20),
                Image.asset('images/link.png', width: 40, height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
