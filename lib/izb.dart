import 'package:flutter/material.dart';


class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Избранное')),
      body: Center(child: Text('Нет избранных товаров')),
    );
  }
}