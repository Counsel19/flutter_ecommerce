import 'package:eccommerce/pages/checkout_screen.dart';
import 'package:eccommerce/providers/cart_provider.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderSummary extends ConsumerWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: Column(
        children: [
          const Text(
            "Order  Summary",
            style: TextStyle(fontSize: 28),
          ),
          const SizedBox(
            height: AppSizes.spaceBetweenItems,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("SubTotal"),
              Text(ref
                  .watch(cartProvider.notifier)
                  .calculateSubTotl()
                  .toString())
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Delivery"), Text("0")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(ref
                  .watch(cartProvider.notifier)
                  .calculateSubTotl()
                  .toString())
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBetweenItems,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheckoutScreen()));
                },
                child: const Text("Checkout")),
          )
        ],
      ),
    );
  }
}
