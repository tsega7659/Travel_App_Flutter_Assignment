import 'package:flutter/material.dart';

import '../../model/place_model.dart';
import '../detailscreen/detail_screen.dart';
import 'widgets/category_card.dart';
import 'widgets/recommended_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.home, size: 40,),
              Icon(Icons.favorite,  size: 40,),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: SingleChildScrollView(
              child: Column(children: [
                // App bar
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/profile.jpeg"),
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
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "Yeab",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Search bar
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Explore new Destinations",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  borderRadius: BorderRadius.circular(100),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search for destinations",
                                prefixIcon: const Icon(Icons.search),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.filter_list),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              
                // Category
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Category",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          CategoryCard(
                            press: () {},
                            image: "assets/images/mountain.jpeg",
                            title: "Mountains",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "assets/images/beach.jpg",
                            title: "Beach",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "assets/images/forest.jpg",
                            title: "Forest",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "assets/images/monument.jpeg",
                            title: "Monuments",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "assets/images/desert.png",
                            title: "Deserts",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              
                // Recommended
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      "Recommended",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    height: 300,
                    child: ListView.builder(
                      itemCount: places.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left:5, right: 15),
                        child: Row(
                          children: [
                            RecomendedCard(placeInfo: places[index], 
                            press: () { 
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(placeInfo: places[index],),),);
                             },),
                          ],
                        ),
                      );
                    })),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
