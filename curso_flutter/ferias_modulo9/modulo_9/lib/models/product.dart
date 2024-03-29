import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../const/constantes.dart';

class Product with ChangeNotifier {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = true,
  });

  void _toggleFavoreete() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  Future<void> toggleFavorite() async {
    _toggleFavoreete;
    final response = await http.patch(
      Uri.parse('${Constantes.KPRODUCT_baseUrl}/$id.json'),
      body: jsonEncode({"isFavorite": isFavorite}),
    );
    if (response.statusCode >= 400) {
      _toggleFavoreete;
    }
  }
}
