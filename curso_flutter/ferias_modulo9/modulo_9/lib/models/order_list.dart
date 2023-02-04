import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop/models/cart.dart';
import 'package:shop/models/cart_item.dart';
import 'package:shop/models/order.dart';

import '../const/constantes.dart';

class OrderList with ChangeNotifier {
  final List<Order> _items = [];

  List<Order> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  Future<void> loadOrders() async {
    final response = await http.get(Uri.parse(
      "${Constantes.KORDERS_baseUrl}.json",
    ));
    if (response.body == "null") return;
    Map<String, dynamic> data = jsonDecode(response.body);
    data.forEach((ordersId, ordersData) {
      _items.add(Order(
        id: ordersId,
        total: ordersData["total"],
        date: DateTime.parse(ordersData["date"]),
        products: (ordersData["products"] as List<dynamic>).map((items) {
          return CartItem(
              id: items["id"],
              productId: items["productId"],
              name: items["name"],
              quantity: items["quantity"],
              price: items["price"]);
        }).toList(),
      ));
      notifyListeners();
      print(data);
    });
  }

  Future<void> addOrder(Cart cart) async {
    final date = DateTime.now();
    final response =
        await http.post(Uri.parse("${Constantes.KORDERS_baseUrl}.json"),
            body: jsonEncode({
              'total': cart.totalAmount,
              'date': date.toIso8601String(),
              'products': cart.items.values
                  .map(
                    (cartItem) => {
                      "id": cartItem.id,
                      "name": cartItem.name,
                      "productId": cartItem.productId,
                      "quantity": cartItem.quantity,
                      "price": cartItem.price,
                    },
                  )
                  .toList(),
            }));
    final id = jsonDecode(response.body)["name"];
    _items.insert(
      0,
      Order(
          id: id,
          total: cart.totalAmount,
          date: DateTime.now(),
          products: cart.items.values.toList()),
    );

    notifyListeners();
  }
}
