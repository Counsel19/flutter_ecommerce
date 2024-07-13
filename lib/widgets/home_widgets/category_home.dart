import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:eccommerce/widgets/home_widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defualtPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryItem(
              icon: const Icon(
                Icons.accessibility,
              ),
              color: Colors.green.shade100,
              title: "Apparels"),
          CategoryItem(
              icon: const Icon(Icons.accessibility),
              color: Colors.green.shade100,
              title: "Apparels"),
          CategoryItem(
              icon: const Icon(Icons.accessibility),
              color: Colors.green.shade100,
              title: "Apparels"),
          CategoryItem(
              icon: const Icon(Icons.accessibility),
              color: Colors.green.shade100,
              title: "Apparels"),
        ],
      ),
    );
  }
}
