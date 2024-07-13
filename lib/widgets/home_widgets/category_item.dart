import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.icon,
      required this.color,
      required this.title});
  final Widget icon;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      padding: const EdgeInsets.only(right: AppSizes.defualtPadding),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
            child: icon,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.grey, fontSize: 10),
          )
        ],
      ),
    );
  }
}
