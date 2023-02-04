import 'package:appvs_iii/model/category.dart';
import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      Approutes.CATEGORY_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      onTap: () => _selectCategory(context),
      child: Container(
        padding: EdgeInsets.all(15),
        // ignore: sort_child_properties_last
        child: Text(
          category.title,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
      ),
    );
  }
}
