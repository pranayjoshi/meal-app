import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = "/filters";
  late final Function saveFilters;

  FiltersScreen(this.saveFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _lactoseFree = false;
  bool _vegan = false;
  bool _vegetarian = false;

  Widget _buildSwitchListTitle(
      String title, String subt, bool currentVal, Function updateVal) {
    return SwitchListTile(
      title: Text(title),
      value: currentVal,
      onChanged: updateVal as void Function(bool)?,
      subtitle: Text(subt),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Filters"),
          actions: [
            IconButton(
                onPressed: () {
                  final Map<String, bool> Sfilters = {
                    "gluten": _glutenFree,
                    "lactose": _lactoseFree,
                    "vegan": _vegan,
                    "vegetarian": _vegetarian,
                  };
                  widget.saveFilters(Sfilters);
                },
                icon: Icon(Icons.save)),
          ],
        ),
        drawer: MainDrawer(),
        body: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal selection.",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              _buildSwitchListTitle("Gluteen Free",
                  "Only includes gluteen free items.", _glutenFree, (val) {
                setState(() {
                  _glutenFree = val;
                });
              }),
              _buildSwitchListTitle("Lactose Free",
                  "Only includes Lactose free items.", _lactoseFree, (val) {
                setState(() {
                  _lactoseFree = val;
                });
              }),
              _buildSwitchListTitle(
                  "Vegan", "Only includes vegan items.", _vegan, (val) {
                setState(() {
                  _vegan = val;
                });
              }),
              _buildSwitchListTitle(
                  "Vegetarian", "Only includes Vegetarian items.", _vegetarian,
                  (val) {
                setState(() {
                  _vegetarian = val;
                });
              })
            ],
          ))
        ]));
  }
}
