import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';
import 'package:practice_4/pages/favorites_manager.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  final List<Flowers> favorites;

  const FavoritesPage({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    final favoritesManager = Provider.of<FavoritesManager>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Избранное')),
      body: favoritesManager.favorites.isEmpty
          ? const Center(child: Text('Список избранного пуст'))
          : ListView.builder(
        itemCount: favoritesManager.favorites.length,
        itemBuilder: (context, index) {
          final flower = favoritesManager.favorites[index];
          return ListTile(
            leading: flower.imageUrl.isNotEmpty
                ? Image.network(flower.imageUrl, width: 50, height: 50)
                : Container(width: 50, height: 50, color: Colors.grey),
            title: Text(flower.title),
            subtitle: Text(flower.description),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () => favoritesManager.removeFromFavorites(flower),
            ),
          );
        },
      ),
    );
  }
}
