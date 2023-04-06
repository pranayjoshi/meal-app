import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  List<Widget> _pages = [
    CategoriesScreen(),
    FavouriteScreen()
  ];

  void _selectPage(int index){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meals"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favourites"),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
