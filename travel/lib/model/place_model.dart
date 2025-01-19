class PlaceInfo {
  final String name,
      location,
      description,
      image,
      hotelname,
      price,
      hoteladdress;
  final List<String> hotelimage;
  final int distance;
  PlaceInfo({
    required this.name,
    required this.location,
    required this.description,
    required this.image,
    required this.distance,
    required this.hotelimage,
    required this.hotelname,
    required this.price,
    required this.hoteladdress,
  });
}

List places = [
  PlaceInfo(
    name: "Mountains",
    location: "Nepal",
    description:
        "The Danakil Desert (or Afar Desert) is a desert in northeast Ethiopia, southern Eritrea, and northwestern Djibouti. Situated in the Afar Triangle, it stretches across 136,956 square kilometres (52,879 sq mi) of arid terrain. It is inhabited by a few Afar, who engage in salt mining.",
    image: "assets/images/mountain.jpeg",
    distance: 10,
    hotelimage: [
      "assets/images/hotel1.jpg",
      "assets/images/hotel2.jpg",
      "assets/images/hotel3.jpg",
      "assets/images/hotel4.jpeg",
      "assets/images/hotel5.jpg",
    ],
    hotelname: "Skylight hotel",
    price: "1000 USD",
    hoteladdress: "150km away",
  ),
  PlaceInfo(
    name: "Beach",
    location: "Goa",
    description:
        "The Danakil Desert (or Afar Desert) is a desert in northeast Ethiopia, southern Eritrea, and northwestern Djibouti. Situated in the Afar Triangle, it stretches across 136,956 square kilometres (52,879 sq mi) of arid terrain. It is inhabited by a few Afar, who engage in salt mining.",
    image: "assets/images/beach.jpg",
    distance: 20,
    hotelimage: [
      "assets/images/hotel1.jpg",
      "assets/images/hotel2.jpg",
      "assets/images/hotel3.jpg",
      "assets/images/hotel4.jpeg",
      "assets/images/hotel5.jpg",
    ],
    hotelname: "Grand Palace Hotel",
    price: "800USD",
    hoteladdress: "80km away",
  ),
  PlaceInfo(
    name: "Forest",
    location: "India",
    description:
        "The Danakil Desert (or Afar Desert) is a desert in northeast Ethiopia, southern Eritrea, and northwestern Djibouti. Situated in the Afar Triangle, it stretches across 136,956 square kilometres (52,879 sq mi) of arid terrain. It is inhabited by a few Afar, who engage in salt mining.",
    image: "assets/images/forest.jpg",
    distance: 30,
    hotelimage: [
      "assets/images/hotel1.jpg",
      "assets/images/hotel2.jpg",
      "assets/images/hotel3.jpg",
      "assets/images/hotel4.jpeg",
      "assets/images/hotel5.jpg",
    ],
    hotelname: "Bon Royal Hotel",
    price: "500USD",
    hoteladdress: "10km away",
  ),
  PlaceInfo(
    name: "Monuments",
    location: "India",
    description:
        "The Danakil Desert (or Afar Desert) is a desert in northeast Ethiopia, southern Eritrea, and northwestern Djibouti. Situated in the Afar Triangle, it stretches across 136,956 square kilometres (52,879 sq mi) of arid terrain. It is inhabited by a few Afar, who engage in salt mining.",
    image: "assets/images/monument.jpeg",
    distance: 40,
    hotelimage: [
      "assets/images/hotel1.jpg",
      "assets/images/hotel2.jpg",
      "assets/images/hotel3.jpg",
      "assets/images/hotel4.jpeg",
      "assets/images/hotel5.jpg",
    ],
    hotelname: "Sheraton Hotel",
    price: "1200USD",
    hoteladdress: "60km away",
  ),
  PlaceInfo(
    name: "Deserts",
    location: "India",
    description:
        "The Danakil Desert (or Afar Desert) is a desert in northeast Ethiopia, southern Eritrea, and northwestern Djibouti. Situated in the Afar Triangle, it stretches across 136,956 square kilometres (52,879 sq mi) of arid terrain. It is inhabited by a few Afar, who engage in salt mining.",
    image: "assets/images/desert.png",
    distance: 50,
    hotelimage: [
      "assets/images/hotel1.jpg",
      "assets/images/hotel2.jpg",
      "assets/images/hotel3.jpg",
      "assets/images/hotel4.jpeg",
      "assets/images/hotel5.jpg",
    ],
    hotelname: "Golden Tulip Hotel",
    price: "1000USD",
    hoteladdress: "100km away",
  ),
];
