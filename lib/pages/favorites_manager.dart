import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';

class FavoritesManager with ChangeNotifier {
  final List<Flowers> _favorites = [];

  List<Flowers> get favorites => _favorites;

  void addToFavorites(Flowers flower) {
    if (!_favorites.contains(flower)) {
      _favorites.add(flower);
      notifyListeners();
    }
  }

  void removeFromFavorites(Flowers flower) {
    _favorites.remove(flower);
    notifyListeners();
  }
}
