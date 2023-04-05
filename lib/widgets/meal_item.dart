import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  void SelectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: SelectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Image.network(src),
          )
        ]),
      ),
    );
  }
}
