import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';
import 'package:practice_4/pages/cart_manager.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartManager = Provider.of<CartManager>(context);
    final double totalAmount = cartManager.cartItems.fold(0, (sum, item) => sum + double.parse(item.flower.cost.split(' ')[0]) * item.quantity);

    return Scaffold(
      appBar: AppBar(title: const Text('Корзина')),
      body: Column(
        children: [
          Expanded(
            child: cartManager.cartItems.isEmpty
                ? const Center(child: Text('Корзина пуста'))
                : ListView.builder(
              itemCount: cartManager.cartItems.length,
              itemBuilder: (context, index) {
                final cartItem = cartManager.cartItems[index];
                return ListTile(
                  leading: cartItem.flower.imageUrl.isNotEmpty
                      ? Image.network(cartItem.flower.imageUrl, width: 50, height: 50)
                      : Container(width: 50, height: 50, color: Colors.grey),
                  title: Text(cartItem.flower.title),
                  subtitle: Text('${cartItem.quantity} шт.'),
                  trailing: SizedBox(
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () => cartManager.decreaseQuantity(cartItem),
                          ),
                        ),
                        Text('${cartItem.quantity}'),
                        Flexible(
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () => cartManager.increaseQuantity(cartItem),
                          ),
                        ),
                        Flexible(
                          child: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => cartManager.removeFromCart(cartItem),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          if (totalAmount > 0)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Логика покупки
                },
                child: Text('Купить за ${totalAmount.toStringAsFixed(2)} ₽'),
              ),
            ),
        ],
      ),
    );
  }
}
