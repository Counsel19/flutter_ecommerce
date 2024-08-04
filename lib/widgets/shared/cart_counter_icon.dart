import 'package:eccommerce/pages/cart_screen.dart';
import 'package:eccommerce/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartCounterIcon extends ConsumerWidget {
  const CartCounterIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CartScreen()));
          },
          icon: const Icon(Icons.shopping_bag),
        ),
        Positioned(
          right: 4,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(ref.watch(cartProvider).length.toString()),
            ),
          ),
        )
      ],
    );
  }
}
