import 'package:flutter/material.dart';

class PlaceInfo {
  final String name, location, description, image;
  final int distance;
  PlaceInfo({
    required this.name,
    required this.location,
    required this.description,
    required this.image,
    required this.distance,
  });
}

List places = [
  PlaceInfo(
    name: "Mountains",
    location: "Nepal",
    description: "The Danakil Desert (or Afar Desert) is a desert in northeast Ethiopia, southern Eritrea, and northwestern Djibouti. Situated in the Afar Triangle, it stretches across 136,956 square kilometres (52,879 sq mi) of arid terrain. It is inhabited by a few Afar, who engage in salt mining.",
    image: "assets/images/mountain.jpeg",
    distance: 10,
  ),
  PlaceInfo(
    name: "Beach",
    location: "Goa",
    description: "The Danakil Desert (or Afar Desert) is a desert in northeast Ethiopia, southern Eritrea, and northwestern Djibouti. Situated in the Afar Triangle, it stretches across 136,956 square kilometres (52,879 sq mi) of arid terrain. It is inhabited by a few Afar, who engage in salt mining.",
    image: "assets/images/beach.jpg",
    distance: 20,
  ),
  PlaceInfo(
    name: "Forest",
    location: "India",
    description: "The Danakil Desert (or Afar Desert) is a desert in northeast Ethiopia, southern Eritrea, and northwestern Djibouti. Situated in the Afar Triangle, it stretches across 136,956 square kilometres (52,879 sq mi) of arid terrain. It is inhabited by a few Afar, who engage in salt mining.",
    image: "assets/images/forest.jpg",
    distance: 30,
  ),
  PlaceInfo(
    name: "Monuments",
    location: "India",
    description: "The Danakil Desert (or Afar Desert) is a desert in northeast Ethiopia, southern Eritrea, and northwestern Djibouti. Situated in the Afar Triangle, it stretches across 136,956 square kilometres (52,879 sq mi) of arid terrain. It is inhabited by a few Afar, who engage in salt mining.",
    image: "assets/images/monument.jpeg",
    distance: 40,
  ),
  PlaceInfo(
    name: "Deserts",
    location: "India",
    description: "The Danakil Desert (or Afar Desert) is a desert in northeast Ethiopia, southern Eritrea, and northwestern Djibouti. Situated in the Afar Triangle, it stretches across 136,956 square kilometres (52,879 sq mi) of arid terrain. It is inhabited by a few Afar, who engage in salt mining.",
    image: "assets/images/desert.png",
    distance: 50,
  ),
];
