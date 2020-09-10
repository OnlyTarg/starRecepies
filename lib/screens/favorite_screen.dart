import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatefulWidget {

  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override

  Widget build(BuildContext context) {

    if (widget.favoriteMeals.isEmpty) {

      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      setState(() {
        print('sssss');
      });
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            widget.favoriteMeals[index].id,
            widget.favoriteMeals[index].title,
            widget.favoriteMeals[index].imageUrl,
            widget.favoriteMeals[index].duration,
            widget.favoriteMeals[index].complexity,
            widget.favoriteMeals[index].affordability,

          );

        },
        itemCount: widget.favoriteMeals.length,
      );
    }
  }
}
