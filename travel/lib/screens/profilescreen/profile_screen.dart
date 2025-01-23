import 'package:flutter/material.dart';
import 'package:travel/screens/favoritescreen/favorite_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isEditing = false;
  final TextEditingController _nameController =
      TextEditingController(text: "Yeabsira Zelalem");
  final TextEditingController _emailController =
      TextEditingController(text: "yeab@gmail.com");
  final TextEditingController _passwordController =
      TextEditingController(text: "**********");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 40,
                  color: Color.fromARGB(255, 76, 185, 3),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  size: 40,
                  color: Color.fromARGB(255, 76, 185, 3),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FavoriteScreen(favorites: []),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 76, 185, 3),
                  size: 40,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          // Gradient Background
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
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
                  // App bar
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            AssetImage("assets/images/profile.jpeg"),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Welcome, ",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "\nYeabsira",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height - 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          _buildProfileField(
                            "Name",
                            _nameController,
                            _isEditing,
                          ),
                          _buildProfileField(
                            "Email",
                            _emailController,
                            _isEditing,
                          ),
                          _buildProfileField(
                            "Password",
                            _passwordController,
                            _isEditing,
                            obscureText: true,
                          ),
                          const SizedBox(height: 70),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _isEditing = !_isEditing;
                                if (!_isEditing) {}
                              });
                            },
                            child: Container(
                              width: 300,
                              height: 55,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 135, 201, 92),
                                  Color.fromARGB(255, 100, 168, 56),
                                  Color.fromARGB(255, 11, 126, 49),
                                ]),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  _isEditing ? "SAVE" : "EDIT PROFILE",
                                  style: const TextStyle(
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
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileField(
      String label, TextEditingController controller, bool isEditing,
      {bool obscureText = false}) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      enabled: isEditing,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Color.fromARGB(255, 106, 191, 36),
        ),
        suffixIcon: isEditing
            ? Icon(
                Icons.edit,
                color: Colors.grey,
              )
            : null,
      ),
    );
  }
}
