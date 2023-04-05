import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meal_app/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {

  static const routeName = "/category_meals";

  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs["title"];
    final categoryId = routeArgs["id"];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(itemBuilder: (context, index){
          return Text(categoryMeals[index].title);
        }, itemCount: categoryMeals.length,));
  }
}
