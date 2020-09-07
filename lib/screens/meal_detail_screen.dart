import 'package:flutter/material.dart';

class MealDetaisScreen extends StatelessWidget {
  static const routeName = '/mealDetailRoute';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('The Recipe'),),
      body: Center(
        child: Text('The Meal - $mealId ' ),
      ),
    );
  }
}
