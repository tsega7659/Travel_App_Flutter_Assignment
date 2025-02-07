import 'package:flutter/material.dart';
import 'package:travel/screens/Home/widgets/hotels.dart';
import 'package:travel/screens/favoritescreen/favorite_Screen.dart';
import 'package:travel/model/favorite_item.dart'; 
import 'package:travel/model/favorite_item.dart';


import '../../model/place_model.dart';

class DetailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
  const DetailScreen({super.key, required this.placeInfo});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<FavoriteItem> favorites = [];
  bool isFavorite = false;

  void addToFavorites(FavoriteItem item) {
    setState(() {
      favorites.add(item);
      isFavorite = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    FavoriteItem currentItem = FavoriteItem(
      title: widget.placeInfo.name, 
      imagePath: widget.placeInfo.image, 
    );
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
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
                      builder: (context) =>
                          FavoriteScreen(favorites: favorites),
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
          Image.asset(
            widget.placeInfo.image,
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // App bar
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(100),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.black,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.placeInfo.name,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 39, 79, 12),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Color.fromARGB(255, 39, 79, 12),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  widget.placeInfo.location,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 134, 196, 94),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Text(
                              "Trip details",
                              style: const TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 99, 167, 54),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.placeInfo.description,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Divider(
                              height: 5,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Distance: ",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 134, 196, 94),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Text(
                                    widget.placeInfo.distance.toString() +
                                        " km away from the capital.",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                                height: 300,
                                child: ListView.builder(
                                    itemCount: places.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 15),
                                        child: Row(
                                          children: [
                                            HotelsCard(
                                              placeInfo: places[index],
                                              imageIndex: index,
                                              press: () {
                                              },
                                            ),
                                          ],
                                        ),
                                      );
                                    })),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color.fromARGB(255, 135, 201, 92),
                                  Color.fromARGB(255, 100, 168, 56),
                                  Color.fromARGB(255, 11, 126, 49),
                                ]),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height: 50,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                onPressed: () {
                                  addToFavorites(currentItem);
                                },
                                child: Text(
                                  isFavorite
                                      ? "Added your Favorite Place"
                                      : "Add to Your Favorite Places",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
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
            ),
          ),
        ],
      ),
    );
  }
}
