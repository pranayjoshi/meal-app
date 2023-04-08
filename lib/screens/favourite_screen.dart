import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meal_app/models/meal.dart';

import '../widgets/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;
  FavouriteScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty){
      return Center(child: Text("You have no Favourites!"));
    } else {
      return ListView.builder(
          itemBuilder: (context, index) {
            final Meal x = favouriteMeals[index];
            return MealItem(
              id: x.id,
              title: x.title,
              imageUrl: x.imageUrl,
              duration: x.duration,
              complexity: x.complexity,
              affordability: x.affordability,
            );
          },
          itemCount: favouriteMeals.length,
        );
    }
  }
}