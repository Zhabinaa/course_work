import 'package:flutter/material.dart';

import 'home_page.dart';


class CartScreen extends StatelessWidget {
final List<Product> cart;

  CartScreen({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Корзина')),
      body: cart.isEmpty
          ? Center(child: Text('Корзина пуста'))
          : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(cart[index].imageUrl, width: 50, height: 50),
                  title: Text(cart[index].name),
                  subtitle: Text('${cart[index].price} руб.'),
                );
              },
            ),
    );
  }
}
