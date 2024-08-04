import 'package:eccommerce/models/cart.dart';
import 'package:eccommerce/models/product.dart';
import 'package:eccommerce/pages/cart_screen.dart';
import 'package:eccommerce/pages/product_details_screen.dart';
import 'package:eccommerce/providers/cart_provider.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:eccommerce/widgets/shared/rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductCard extends ConsumerWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allCart = ref.watch(cartProvider);
    final isItemInCart = allCart.any((item) => item.productId == product.id);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              product: product,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 1),
                blurRadius: 2,
                spreadRadius: 1),
          ],
        ),
        child: Column(
          children: [
            RoundedImage(
              isNetworkImage: true,
              borderRadius: 12,
              imageUrl: product.image,
              width: double.infinity,
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defualtPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "\$${product.unitPrice.toString()}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        isItemInCart
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CartScreen()))
                            : ref.read(cartProvider.notifier).addToCart(Cart(
                                productId: product.id,
                                product: product,
                                id: DateTime.now().toString(),
                                quantity: 1));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        isItemInCart ? "View in Cart" : "Add to Cart",
                        style: const TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
