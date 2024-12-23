import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';
import 'package:practice_4/pages/catalog_page.dart';

class ItemNote extends StatelessWidget {
  final Flowers flowers;
  final bool isFavourite;
  final VoidCallback onFavouriteToggle;
  final VoidCallback onAddToCart;
  final VoidCallback onRemove; // Параметр для удаления элемента

  const ItemNote({
    super.key,
    required this.flowers,
    required this.isFavourite,
    required this.onFavouriteToggle,
    required this.onAddToCart,
    required this.onRemove, // Добавим параметр для удаления элемента
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CatalogPage(flowers: flowers),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: flowers.imageUrl.isNotEmpty
                            ? NetworkImage(flowers.imageUrl)
                            : AssetImage('assets/placeholder.png')
                        as ImageProvider,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          flowers.title,
                          style: const TextStyle(
                            fontSize: 27,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Serif",
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Colors.white12,
                              width: 3,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CatalogPage(flowers: flowers),
                              ),
                            );
                          },
                          child: const Text(
                            'Описание цветка',
                            style:
                            TextStyle(fontSize: 15, color: Colors.white70),
                          ),
                        ),
                        Text(
                          flowers.cost,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0.5,
                    right: 4,
                    child: IconButton(
                      icon: Icon(
                        isFavourite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed: onFavouriteToggle,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: onAddToCart,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Изменяем цвет на голубой
                foregroundColor: Colors.white,
              ),
              child: const Text('Добавить в корзину'),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: onRemove, // Параметр для удаления элемента
            ),
          ],
        ),
      ),
    );
  }
}
