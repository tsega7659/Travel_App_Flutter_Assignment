import 'package:flutter/material.dart';
import 'package:travel/screens/loginscreen/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient Background
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to\n ተጓዥ!",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Design your own trip and enjoy your vacation",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
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
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          // Name Field
                          TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.check, color: Colors.grey),
                              label: Text(
                                "Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 106, 191, 36),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Name cannot be empty";
                              }
                              if (RegExp(r'\d').hasMatch(value)) {
                                return "Name cannot contain numbers";
                              }
                              return null;
                            },
                          ),
                          // Email Field
                          TextFormField(
                            controller: _emailController,
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email cannot be empty";
                              }
                              if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$')
                                  .hasMatch(value)) {
                                return "Enter a valid email address";
                              }
                              return null;
                            },
                          ),
                          // Password Field
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,
                                  color: Colors.grey),
                              label: Text(
                                "Password",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 106, 191, 36),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password cannot be empty";
                              }
                              if (value.length < 8) {
                                return "Password must be at least 8 characters";
                              }
                              return null;
                            },
                          ),
                          // Confirm Password Field
                          TextFormField(
                            controller: _confirmPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,
                                  color: Colors.grey),
                              label: Text(
                                "Confirm Password",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 106, 191, 36),
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value != _passwordController.text) {
                                return "Passwords do not match";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 70),
                          // Sign In Button
                          InkWell(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              }
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
                              "Already have an account?",
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
                                      builder: (context) => const LoginScreen(),
                                    ),
                                  );
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
          ),
        ],
      ),
    );
  }
}
