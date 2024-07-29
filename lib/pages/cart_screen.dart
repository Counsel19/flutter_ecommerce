import 'package:eccommerce/models/cart.dart';
import 'package:eccommerce/providers/cart_provider.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:eccommerce/widgets/cart/cart_item.dart';
import 'package:eccommerce/widgets/shared/cart_counter_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Cart> allCartItem = ref.watch(cartProvider);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Your Cart"),
          actions: const [CartCounterIcon()],
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppSizes.defualtPadding),
          child: ListView.builder(
            itemCount: allCartItem.length,
            itemBuilder: (context, index) =>
                CartItem(cartItem: allCartItem[index]),
          ),
        ));
  }
}
