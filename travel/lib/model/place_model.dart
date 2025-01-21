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
    location: "Gondar,Ethiopia",
    description:
        "The Simien Mountains are one of Ethiopia's most popular destinations. Sitting just north of Gondar, it's easily accessible along the northern circuit of Ethiopia. Comprising 220 square kilometres of peaks, plateaus, vistas and valleys, the park offers stunning viewpoints and some of the best trekking routes in Africa. ",
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
    location: "Ambo,Ethiopia",
    description:
        "Wonchi lake is a picturesque crater lake which is located on the mountain range between the town of Ambo and Woliso. The lake is the beautiful legacy of a once powerful volcano erupting in the Tertiary period of the Cenozoic Era.",
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
    location: "Kafa,Ethiopia",
    description:
        "The forests that swathe Ethiopia’s western highlands are the original home of coffee, which still grows profusely in the understory along with a wealth of other wildlife and sustainable forest products.",
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
    location: "Gondar,Ehiopia",
    description:
        "Fasil Ghabbi or the castle of Gondar is a great complex of buildings representing the history of the city. Some of the buildings are well restored.",
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
    location: "Afar,Ethiopia",
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
