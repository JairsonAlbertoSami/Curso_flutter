import 'package:appvs_iii/componet/meal_item.dart';
import 'package:appvs_iii/model/category.dart';
import 'package:flutter/material.dart';
import '../date/dummy_date.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/meal.dart';

class CategoryMilsscreen extends StatelessWidget {
  final List<Meal> meals;

  CategoryMilsscreen(this.meals);
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    final categoryMelas = meals.where((meals) {
      return meals.categories.contains(category.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      // ignore: prefer_const_constructors
      body: ListView.builder(
        itemCount: categoryMelas.length,
        itemBuilder: (context, index) {
          return MealItem(categoryMelas[index]);
        },
      ),
    );
  }
}
