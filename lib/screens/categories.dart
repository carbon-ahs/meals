import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/category.dart';
import 'package:meals/screens/meals.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CatagoriesScreen extends StatelessWidget {
  const CatagoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    dummyMeals.where((meal) => meal.categories.contains(category.id)).toList();
    //Navigator.push(context, route);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealsScreen(
          title: category.title,
          meals: dummyMeals,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        // availableCategories.map((category) => CatagoryGridItem(category: category)).toList();
        for (final category in availableCategories)
          CatagoryGridItem(
            category: category,
            onSelectCategory: () {
              _selectCategory(context, category);
            },
          )
      ],
    );
  }
}
