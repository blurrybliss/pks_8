import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';

class FavoritesPage extends StatefulWidget {
  final List<Flowers> favorites;
  const FavoritesPage({super.key, required this.favorites});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  void _removeFromFavorites(Flowers flower) {
    setState(() {
      widget.favorites.remove(flower);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Избранное')),
      body: widget.favorites.isEmpty
          ? const Center(child: Text('Список избранного пуст'))
          : ListView.builder(
        itemCount: widget.favorites.length,
        itemBuilder: (context, index) {
          final flower = widget.favorites[index];
          return ListTile(
            leading: Image.network(flower.imageUrl, width: 50, height: 50),
            title: Text(flower.title),
            subtitle: Text(flower.description),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () => _removeFromFavorites(flower),
            ),
          );
        },
      ),
    );
  }
}
