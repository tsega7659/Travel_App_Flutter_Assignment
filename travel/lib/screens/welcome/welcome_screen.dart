import 'package:flutter/material.dart';
import 'package:travel/screens/Home/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/welcome.jpg",
             height: double.infinity,
            width: double.infinity,
             fit: BoxFit.cover),
             SafeArea(
               child: Center(
                 child: Padding(
                   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                    const  Text(
                        "Welcome to ተጓዥ",
                         style: TextStyle(fontSize: 30, 
                         fontWeight: FontWeight.w900, 
                         color: Colors.white,),
                         ),
                    const SizedBox(
                        height: 15,

                        ),
                    const Text(
                        "The Journy is your home. Explore the world with our travel app and get the feeling like your own home.", 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20, 
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                        color: Colors.white),
                        ),
                    const SizedBox(
                        height: 15,
                        ),
                        // login button
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute
                              (builder: (context) =>const HomeScreen()));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/google.png", 
                                    height:30,
                                     width: 30
                                     ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Continue with Google",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () => {
                            Navigator.push(
                              context, 
                              MaterialPageRoute
                              (builder: (context) =>const HomeScreen()))
                          },
                          child: Container(
                            width: double.infinity,
                            height: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/facebook.png",
                                     height:30, 
                                     width: 30
                                     ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Continue with Facebook",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        ),
                         SizedBox(
                          height : MediaQuery.of(context).size.height * 0.06,
                        ),
                    ],
                   ),
                 ),
               ),
             )
             ],
      ),
    );
  }
}
