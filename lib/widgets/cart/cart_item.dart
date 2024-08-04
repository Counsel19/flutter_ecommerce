import 'package:eccommerce/models/cart.dart';
import 'package:eccommerce/providers/cart_provider.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:eccommerce/widgets/cart/quantity_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartItem extends ConsumerWidget {
  const CartItem({super.key, required this.cartItem});

  final Cart cartItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appCartProvider = ref.watch(cartProvider.notifier);
    final cart = ref.watch(cartProvider);
    final item = cart.firstWhere((item) => item.id == cartItem.id);

    void handleIncreaseQuantity() {
      appCartProvider.increaseQuantity(item);
    }

    void handleReduceQuantity() {
      appCartProvider.decreaseQuantity(item);
    }

    void handelDeleteCartItem() {
      appCartProvider.removeFromCart(item);
    }

    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: Image.network(
              cartItem.product.image,
              height: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  cartItem.product.name,
                  style: const TextStyle(overflow: TextOverflow.ellipsis),
                ),
                const SizedBox(
                  height: AppSizes.spaceBetweenItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text("\$${cartItem.product.unitPrice.toString()}"),
                    ),
                    QuantityWrapper(
                      quantity: item.quantity,
                      handelDeleteCartItem: handelDeleteCartItem,
                      handleReduceQuantity: handleReduceQuantity,
                      handleIncreaseQuantity: handleIncreaseQuantity,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
