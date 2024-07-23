import 'package:eccommerce/providers/product_provider.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:eccommerce/widgets/shared/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductsGrid extends ConsumerWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(productServiceProvider).getAllProducts();
    return GridView.builder(
      itemCount: allProducts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: AppSizes.spaceBetweenItems,
          mainAxisSpacing: AppSizes.spaceBetweenItems,
          mainAxisExtent: 250),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ProductCard(
        product: allProducts[index],
      ),
    );
  }
}
