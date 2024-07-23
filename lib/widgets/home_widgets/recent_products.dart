import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:eccommerce/widgets/shared/products_grid.dart';
import 'package:eccommerce/widgets/shared/section_title.dart';
import 'package:flutter/material.dart';

class RecentProducts extends StatelessWidget {
  const RecentProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.defualtPadding),
      child: const Column(
        children: [
          SectionTitle(title: "Recent Products"),
          ProductsGrid(),
        ],
      ),
    );
  }
}
