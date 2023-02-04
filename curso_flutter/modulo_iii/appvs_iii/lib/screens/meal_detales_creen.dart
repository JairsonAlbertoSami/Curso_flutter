import 'package:appvs_iii/model/meal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MealDetailScreen extends StatelessWidget {
  final Function(Meal) toggleFavority;
  final bool Function(Meal) isFavorite;
  const MealDetailScreen(this.toggleFavority, this.isFavorite);
  Widget _crateSecsionTitle(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).appBarTheme.titleTextStyle,
      ),
    );
  }

  Widget _createSecsionContainer(Widget Child) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        width: 330,
        height: 250,
        decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 17, 13, 13),
            ),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: Child);
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _crateSecsionTitle(context, "Ingredientes"),
            _createSecsionContainer(ListView.builder(
              itemCount: meal.ingredients.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(
                      meal.ingredients[index],
                    ),
                  ),
                  color: Theme.of(context).colorScheme.secondary,
                );
              },
            )),
            _crateSecsionTitle(context, "Passos"),
            _createSecsionContainer(
              ListView.builder(
                itemCount: meal.steps.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text("${index + 1}"),
                        ),
                        title: Text(meal.steps[index]),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 11, 221, 81),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          toggleFavority(meal);
        },
        child: Icon(isFavorite(meal) ? Icons.star : Icons.star_border),
      ),
    );
  }
}
