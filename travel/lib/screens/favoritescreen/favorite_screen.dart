import 'package:flutter/material.dart';
import 'package:travel/model/favorite_item.dart'; // Import the FavoriteItem class

class FavoriteScreen extends StatefulWidget {
  final List<FavoriteItem> favorites;

  FavoriteScreen({required this.favorites});

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  void removeFromFavorites(FavoriteItem item) {
    setState(() {
      widget.favorites.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Favorites',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 135, 201, 92),
                Color.fromARGB(255, 100, 168, 56),
                Color.fromARGB(255, 11, 126, 49),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: widget.favorites.isEmpty
          ? Center(
              child: Text(
                'Your favorite folder is empty',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            )
          : Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 135, 201, 92),
                    Color.fromARGB(255, 100, 168, 56),
                    Color.fromARGB(255, 11, 126, 49),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 100, right: 10, left: 10),
                itemCount: widget.favorites.length,
                itemBuilder: (context, index) {
                  final favorite = widget.favorites[index];
                  return Card(
                    elevation: 5,
                    shadowColor: Colors.green,
                    color: Colors.white,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(favorite.imagePath),
                      ),
                      title: Text(
                        favorite.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          removeFromFavorites(favorite);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
