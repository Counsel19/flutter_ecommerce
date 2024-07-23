import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.imageUrl,
      required this.color,
      required this.title});
  final String imageUrl;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(right: AppSizes.defualtPadding),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.network(
              imageUrl,
              height: 40,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Color.fromARGB(255, 79, 76, 76), fontSize: 12),
          )
        ],
      ),
    );
  }
}
