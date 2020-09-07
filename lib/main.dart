import 'package:flutter/material.dart';
import 'package:star_recepies/screens/tabs_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 10),
          fontFamily: 'Raleway',
          /*textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                  fontSize: 20,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold))*/


          ),
      routes: {
        '/': (context) => TabsScreen( ),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetaisScreen.routeName: (context)=> MealDetaisScreen()
      },
    );
  }
}
