import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meal-detail";

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("$mealId"),
        ),
        body:Center(child: Text("This Meal - $mealId!"),));
  }
}