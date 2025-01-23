import 'package:flutter/material.dart';
import 'package:travel/screens/favoritescreen/favorite_screen.dart';
import 'package:travel/screens/profilescreen/profile_screen.dart';

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
  String selectedCategory = "";
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    List filteredPlaces = places
        .where((place) => (selectedCategory.isEmpty ||
            place.category.toLowerCase() == selectedCategory.toLowerCase()))
        .where((place) => (searchQuery.isEmpty ||
            place.location.toLowerCase().contains(searchQuery.toLowerCase())))
        .toList();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.home,
                color: Color.fromARGB(255, 76, 185, 3),
                size: 40,
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
      body: Container(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // App bar
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
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
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 100, 168, 56),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: "Yeab",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 100, 168, 56),
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
                          color: Color.fromARGB(255, 39, 79, 12),
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  onChanged: (value) {
                                    setState(() {
                                      searchQuery = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Search for destinations",
                                    hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 76, 185, 3),
                                    ),
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
                              color: Color.fromARGB(255, 39, 79, 12),
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
                                press: () {
                                  setState(() {
                                    selectedCategory = "Mountains";
                                  });
                                },
                                image: "assets/images/mountain.jpeg",
                                title: "Mountains",
                              ),
                              CategoryCard(
                                press: () {
                                  setState(() {
                                    selectedCategory = "Beach";
                                  });
                                },
                                image: "assets/images/beach.jpg",
                                title: "Beach",
                              ),
                              CategoryCard(
                                press: () {
                                  setState(() {
                                    selectedCategory = "Forest";
                                  });
                                },
                                image: "assets/images/forest.jpg",
                                title: "Forest",
                              ),
                              CategoryCard(
                                press: () {
                                  setState(() {
                                    selectedCategory = "Monuments";
                                  });
                                },
                                image: "assets/images/monument.jpeg",
                                title: "Monuments",
                              ),
                              CategoryCard(
                                press: () {
                                  setState(() {
                                    selectedCategory = "Deserts";
                                  });
                                },
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
                              color: Color.fromARGB(255, 39, 79, 12),
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
                        itemCount: filteredPlaces.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 5, right: 15),
                            child: Row(
                              children: [
                                RecomendedCard(
                                  placeInfo: filteredPlaces[index],
                                  press: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                          placeInfo: filteredPlaces[index],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    // Amazing Places in Ethiopia
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Amazing Places",
                          style: TextStyle(
                              fontSize: 40,
                              color: Color.fromARGB(255, 39, 79, 12),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: places.map((place) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 5, right: 15),
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(place.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 10,
                                    left: 10,
                                    right: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      color: Colors.black.withOpacity(0.6),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            place.name,
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            place.location,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
