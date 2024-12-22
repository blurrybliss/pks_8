import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final List<Flowers> _favorites = [];

  void _removeFromFavorites(Flowers flower) {
    setState(() {
      _favorites.remove(flower);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Избранное')),
      body: _favorites.isEmpty
          ? const Center(child: Text('Список избранного пуст'))
          : ListView.builder(
        itemCount: _favorites.length,
        itemBuilder: (context, index) {
          final flower = _favorites[index];
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