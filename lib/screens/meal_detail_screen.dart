import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/widgets/meal_item.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meal-detail";

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments;

    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => mealId == meal.id);

    return Scaffold(
        appBar: AppBar(
          title: Text("${selectedMeal.title}"),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: 300,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                child: Text("Ingredients",
                    style: Theme.of(context).textTheme.titleMedium)),
            Container(
              height: 200,
              width: 300,
              child: ListView.builder(
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: (context, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Text(selectedMeal.ingredients[index]),
                ),
              ),
            )
          ],
        ));
  }
}
