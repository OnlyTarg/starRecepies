import 'package:flutter/material.dart';
import 'package:star_recepies/screens/categories_screen.dart';
import 'package:star_recepies/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meal'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Category',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorite',
              ),
            ],
          ),
        ),
      body: TabBarView(children: [
        CategoriesScreen(),FavoriteScreen()
      ],),),
    );
  }
}