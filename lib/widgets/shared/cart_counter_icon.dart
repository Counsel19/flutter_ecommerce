import 'package:eccommerce/pages/cart_screen.dart';
import 'package:flutter/material.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: const Text("2"),
          ),
        )
      ],
    );
  }
}
