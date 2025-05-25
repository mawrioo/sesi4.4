import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    // final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('My Cart')),
      body: Column(
        children: [
          Text("Total Price: \$${cartProvider.totalPrice}"),
          Expanded(
            child: ListView.builder(
              itemCount: cartProvider.items.length,
              itemBuilder: (ctx, i) {
                final item = cartProvider.items.values.toList()[i];
                return ListTile(
                  title: Text(item.title),
                  subtitle: Text("Price: \$${item.price} x ${item.quantity}"),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              cartProvider.clearCart();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Cart cleared!')),
              );
            },
            child: const Text('Clear Cart'),
          ),
        ],
      ),
    );
  }
}
