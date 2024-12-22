import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';

class ItemNote extends StatelessWidget {
  final Flowers flowers;

  const ItemNote({super.key, required this.flowers});

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
                    fontSize: 12, // Уменьшен шрифт
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  flowers.description,
                  style: const TextStyle(
                    fontSize: 10, // Уменьшен шрифт
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        '${flowers.cost} ₽',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Подробнее',
                        style: TextStyle(fontSize: 10), // Уменьшен шрифт
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