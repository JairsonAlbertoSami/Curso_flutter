import 'package:appvs_iii/model/Setting_filtros.dart';
import 'package:appvs_iii/screens/categoryMils_screens.dart';
import 'package:appvs_iii/screens/meal_detales_creen.dart';
import 'package:appvs_iii/screens/setting_screen.dart';
import 'package:appvs_iii/screens/tab_screen.dart';
import 'package:flutter/material.dart';
import 'model/meal.dart';
import 'screens/categories_screen.dart';
import './utils/app_routes.dart';
import 'screens/categories_screen.dart';
import 'screens/meal_detales_creen.dart';
import 'componet/meal_item.dart';
import './date/dummy_date.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Settings settings = Settings();
  List<Meal> _avaibleMealS = dummyMeals;
  List<Meal> _favoritoMeals = [];

  void _filterMeals(Settings settings) {
    setState(() {
      _avaibleMealS.where((meal) {
        final filterGlutem = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetaarian = settings.isVegetarian && !meal.isVegetarian;
        return !filterVegetaarian &&
            !filterLactose &&
            !filterVegan &&
            filterGlutem;
      }).toList();
    });
  }

  void _toggleFavority(Meal meal) {
    setState(() {
      _favoritoMeals.contains(meal)
          ? _favoritoMeals.remove(meal)
          : _favoritoMeals.add(meal);
    });
  }

  bool _isToogleFavorite(Meal meal) {
    return _favoritoMeals.contains(meal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      // home: CategoriesScreen(),
      routes: {
        Approutes.HOME: (context) => TabScreen(_favoritoMeals),
        Approutes.CATEGORY_MEALS: (cxt) => CategoryMilsscreen(_avaibleMealS),
        Approutes.CATEGORY_DETAIL: (context) =>
            MealDetailScreen(_toggleFavority, _isToogleFavorite),
        Approutes.SETTINGS: (context) =>
            SettingScree(onSettingschanget: _filterMeals, settings: settings),
      },
      // rotas gerentalizdas <= onGenerateRoute: (setings) { },
    );
  }
}
