import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel/screens/Home/home_screen.dart';
import 'package:travel/screens/welcome/welcome_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 135, 201, 92),
                Color.fromARGB(255, 100, 168, 56),
                Color.fromARGB(255, 11, 126, 49),
              ]),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 100, left: 40),
              child: Text(
                "Hello \n Sign in to ተጓዥ!",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 300),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Ensure spacing between elements
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.email, color: Colors.grey),
                            label: Text(
                              "Email",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 106, 191, 36),
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            suffixIcon:
                                Icon(Icons.visibility_off, color: Colors.grey),
                            label: Text(
                              "Password",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 106, 191, 36),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 12, 78, 39),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 70),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          child: Container(
                            width: 300,
                            height: 55,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(255, 135, 201, 92),
                                Color.fromARGB(255, 100, 168, 56),
                                Color.fromARGB(255, 11, 126, 49),
                              ]),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, right: 20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          InkWell(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const WelcomeScreen()));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 12, 78, 39),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
