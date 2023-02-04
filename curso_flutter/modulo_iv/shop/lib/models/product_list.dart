import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop/components/product_item.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  final _url =
      'https://flutter-663f0-default-rtdb.firebaseio.com/products.json';

  final List<Product> _items = [];

  List<Product> get items => [..._items];
  List<Product> get favoriteItems =>
      _items.where((product) => product.isFavorite).toList();

  Future<void> loadingProducts() async {
    final response = await http.get(Uri.parse(_url));
    Map<String, dynamic> data = jsonDecode(response.body);
    data.forEach((producId, productDate) {
      _items.add(Product(
        id: producId,
        name: productDate["name"],
        description: productDate["description"],
        price: productDate["price"],
        isFavorite: productDate["isFavorite"],
        imageUrl: productDate["imageUrl"],
      ));
    });
  }

  Future<void> saveProduct(Map<String, Object> data) {
    bool hasId = data["id"] != null;
    final product = Product(
      id: hasId ? data["id"] as String : Random().nextDouble().toString(),
      name: data['name'] as String,
      description: data['description'] as String,
      price: data['price'] as double,
      imageUrl: data['imageUrl'] as String,
    );
    if (hasId) {
      return updateProduct(product);
    } else {
      return addProduct(product);
    }
  }

  Future<void> addProduct(Product product) async {
    final response = await http.post(
      Uri.parse("$_url"),
      body: jsonEncode(
        {
          "name": product.name,
          "description": product.description,
          "imageUrl": product.imageUrl,
          "price": product.price,
          "isFavorite": product.isFavorite,
        },
      ),
    );

    final id = jsonDecode(response.body)["name"];

    _items.add(
      Product(
          id: id,
          name: product.name,
          description: product.description,
          price: product.price,
          imageUrl: product.imageUrl,
          isFavorite: product.isFavorite),
    );
    notifyListeners();
  }

  Future<void> updateProduct(Product product) {
    int index = _items.indexWhere((p) => p.id == product.id);
    if (index >= 0) {
      _items[index] = product;
      notifyListeners();
    }
    return Future.value();
  }

  removeProduct(Product product) {
    int index = _items.indexWhere((p) => p.id == product.id);
    if (index >= 0) {
      _items.removeWhere((p) => p.id == product.id);
      notifyListeners();
    }
  }

  int get itemsCount {
    return _items.length;
  }
}

// bool _showFavoriteOnly = false;

//   List<Product> get items {
//     if (_showFavoriteOnly) {
//       return _items.where((prod) => prod.isFavorite).toList();
//     }
//     return [..._items];
//   }

//   void showFavoriteOnly() {
//     _showFavoriteOnly = true;
//     notifyListeners();
//   }

//   void showAll() {
//     _showFavoriteOnly = false;
//     notifyListeners();
//   }
