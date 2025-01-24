
import 'package:flutter/material.dart';
import 'package:flutter_application_2/izb.dart';
import 'package:flutter_application_2/korzina.dart';


class Product {
  final String name;
  final String imageUrl;
  final double price;

  int quantity = 0;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price, 
  });
}

List<Product> products = [
  Product(
    name: 'Торт наполеон',
    imageUrl: 'napoleon.png',
    price: 1000.0,
  ),
  Product(
    name: 'Шоколадный торт',
    imageUrl: 'shok.png',
    price: 1000.0,
  ),
  Product(
    name: 'Ягодный торт',
    imageUrl: 'yagoda.png',
    price: 1000.0,
  ),
  Product(
    name: 'Медовик',
    imageUrl: 'med.png',
    price: 1000.0,
  ),
  Product(
    name: 'Муссовый торт с клубникой',
    imageUrl: 'muss.png',
    price: 1000.0,
  ),
  Product(
    name: 'Чизкейк классический',
    imageUrl: 'chiz.png',
    price: 1000.0,
  ),

  // ... другие товары
];

class HomePage extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Интернет-магазин тортов'),
      actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen(cart: [],)),
              );
            },
          ),
            IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoritesScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Баннер
            Container(
              height: 200,
              color: const Color.fromARGB(255, 234, 121, 158),
              child: Center(
                child: Text(
                  'Добро пожаловать в  магазин тортов!',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            // Список товаров
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 7
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                     mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        products[index].imageUrl,
                        fit: BoxFit.cover,
                        height: 450,
                      ),
                      Text(products[index].name, 
                      style: TextStyle(fontSize: 20)),
                      Text('${products[index].price} руб.'),
                    ],
                  ),
                );
              },
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}