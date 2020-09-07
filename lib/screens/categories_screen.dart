import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/onlyt/AndroidStudioProjects/star_recepies/lib/widgets/category_item.dart';
import 'file:///C:/Users/onlyt/AndroidStudioProjects/star_recepies/lib/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
   return   GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(catData.id, catData.title, catData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      );
  }
}
