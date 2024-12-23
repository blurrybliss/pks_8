import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';

class CartItem {
  final Flowers flower;
  int quantity;

  CartItem({required this.flower, this.quantity = 1});
}

class CartManager with ChangeNotifier {
  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  void addToCart(Flowers flower) {
    final existingItem = _cartItems.firstWhere(
          (item) => item.flower.id == flower.id,
      orElse: () => CartItem(flower: flower),
    );

    if (!_cartItems.contains(existingItem)) {
      _cartItems.add(existingItem);
    } else {
      existingItem.quantity += 1;
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    _cartItems.remove(cartItem);
    notifyListeners();
  }

  void increaseQuantity(CartItem cartItem) {
    cartItem.quantity += 1;
    notifyListeners();
  }

  void decreaseQuantity(CartItem cartItem) {
    if (cartItem.quantity > 1) {
      cartItem.quantity -= 1;
    } else {
      _cartItems.remove(cartItem);
    }
    notifyListeners();
  }
}
