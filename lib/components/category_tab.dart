import 'package:flutter/material.dart';
import 'package:food_app/components/category_item.dart';
import 'package:food_app/data/category_data.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({super.key});

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(CATEGORIES.length, (index) {
          return CategoryItem();
        }),
      ),
    );
  }
}
