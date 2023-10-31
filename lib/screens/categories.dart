import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CatagoriesScreen extends StatelessWidget {
  const CatagoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick your catagory'),
      ),
      body: GridView(
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
            CatagoryGridItem(category: category)
        ],
      ),
    );
  }
}
