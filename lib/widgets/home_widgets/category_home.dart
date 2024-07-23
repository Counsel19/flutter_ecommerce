import 'package:eccommerce/models/category.dart';
import 'package:eccommerce/providers/category_provider.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:eccommerce/widgets/home_widgets/category_item.dart';
import 'package:eccommerce/widgets/shared/section_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryHome extends ConsumerWidget {
  const CategoryHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Category> allCategories =
        ref.watch(categoryServiceProvider).getAllCategories();

    return Padding(
      padding: const EdgeInsets.all(AppSizes.defualtPadding),
      child: Column(
        children: [
          const SectionTitle(title: "Category"),
          const SizedBox(
            height: AppSizes.spaceBetweenItems,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: allCategories
                  .sublist(0, 4)
                  .map(
                    (category) => Expanded(
                      child: CategoryItem(
                          imageUrl: category.imageUrl,
                          color: Colors.green.shade100,
                          title: category.name),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
