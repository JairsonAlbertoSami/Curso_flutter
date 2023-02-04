import 'package:flutter/material.dart';

import '../componet/meal_item.dart';
import '../model/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> _favoritosMeals;
  const FavoriteScreen(this._favoritosMeals);

  @override
  Widget build(BuildContext context) {
    if (_favoritosMeals.isEmpty) {
      return Container(
        child: Text("Minhas refeiçoes favoritas"),
      );
    } else {
      return ListView.builder(
        itemCount: _favoritosMeals.length,
        itemBuilder: (context, index) {
          return MealItem(_favoritosMeals[index]);
        },
      );
    }
  }
}
