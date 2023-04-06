import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = "/filters";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filters")),
        body: Center(
      child: Text("Filters!"),
    ));
  }
}
