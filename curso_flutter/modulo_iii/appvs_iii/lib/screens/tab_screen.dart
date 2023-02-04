import 'package:appvs_iii/componet/mainDrower.dart';
import 'package:appvs_iii/screens/categories_screen.dart';
import 'package:appvs_iii/screens/favorite_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../model/meal.dart';

class TabScreen extends StatefulWidget {
  final List<Meal> _favoritosMeals;

  const TabScreen(this._favoritosMeals);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _seletctdScreenIndex = 0;

  late List<Map<String, Object>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        "title": "Lista de Categoria",
        "Screen": CategoriesScreen(),
      },
      {
        "title": "Meus Favoritos",
        "Screen": FavoriteScreen(
          widget._favoritosMeals,
        )
      }
    ];
  }

  _selestScreens(int index) {
    setState(() {
      _seletctdScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_seletctdScreenIndex].cast()["title"]),
      ),
      drawer: MainDrawerd(),
      body: _screens[_seletctdScreenIndex].cast()["Screen"],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _seletctdScreenIndex,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          unselectedItemColor: Colors.white,
          onTap: _selestScreens,
          backgroundColor: Theme.of(context).colorScheme.primary,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: Icon(Icons.category),
              label: "Category",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: Icon(Icons.star),
              label: "Favorito",
            ),
          ]),
    );
  }
}
