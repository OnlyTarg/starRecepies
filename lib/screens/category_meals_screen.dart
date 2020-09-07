import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categoryMeals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
              categoryMeals[index].id,
              categoryMeals[index].title,
              categoryMeals[index].imageUrl,
              categoryMeals[index].duration,
              categoryMeals[index].complexity,
              categoryMeals[index].affordability);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
