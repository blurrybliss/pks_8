import 'package:practice_4/model/flowers.dart';
import 'package:practice_4/pages/cart_manager.dart';

class CartOperations {
  final CartManager cartManager;

  CartOperations(this.cartManager);

  void addSingleItemToCart(Flowers flower) {
    final existingItem = cartManager.cartItems.firstWhere(
          (item) => item.flower.id == flower.id,
      orElse: () => CartItem(flower: flower),
    );

    if (!cartManager.cartItems.contains(existingItem)) {
      cartManager.cartItems.add(existingItem);
    }
    cartManager.notifyListeners();
  }
}
