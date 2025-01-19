import 'package:flutter/material.dart';
import '../../../model/place_model.dart'; // Import your PlaceInfo model

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotels'),
      ),
      body: ListView(
        children: places.map((place) {
          // Generate 5 cards for each PlaceInfo
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  place.name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(place.hotelimage.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: HotelsCard(
                        placeInfo: place,
                        imageIndex: index, // Pass the specific image index
                        press: () {
                          print('Pressed: ${place.name}, Image: ${index + 1}');
                        },
                      ),
                    );
                  }),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class HotelsCard extends StatelessWidget {
  final PlaceInfo placeInfo;
  final int imageIndex; // Add imageIndex to control the image displayed
  final VoidCallback press;

  const HotelsCard({
    super.key,
    required this.placeInfo,
    required this.imageIndex,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 270,
          width: 220,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 189, 221, 173),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      // Use the image at the specified index
                      image: AssetImage(placeInfo.hotelimage[imageIndex]),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  placeInfo.hotelname,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 76, 185, 3),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.price_change,
                      color: Color.fromARGB(255, 56, 135, 4),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      placeInfo.price,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  '${placeInfo.hoteladdress} ',
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 56, 135, 4),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
