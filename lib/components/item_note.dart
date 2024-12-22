import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';

class ItemNote extends StatelessWidget {
  final Flowers flowers;
  final VoidCallback onMoreDetails;
  final VoidCallback onAddToFavorites;

  const ItemNote({
    super.key,
    required this.flowers,
    required this.onMoreDetails,
    required this.onAddToFavorites,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Image.network(
            flowers.imageUrl,
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  flowers.title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  flowers.description,
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                Text(
                  '${flowers.cost} ₽',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: onAddToFavorites,
                    ),
                    ElevatedButton(
                      onPressed: onMoreDetails,
                      child: const Text(
                        'Подробнее',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
