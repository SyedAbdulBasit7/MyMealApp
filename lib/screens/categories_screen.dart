import 'package:flutter/material.dart';
import 'package:mymealapp/model/meal.dart';
import '../widgets/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  GridView(
          padding: const EdgeInsets.all(25),
          children: Dummy_Categories.map(
              (catData) => CategoryItem(catData.id,catData.title, catData.color)).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        );
  }
}
