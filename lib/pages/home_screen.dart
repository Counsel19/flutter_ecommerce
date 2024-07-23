import 'package:eccommerce/widgets/home_widgets/category_home.dart';
import 'package:eccommerce/widgets/home_widgets/home_banner.dart';
import 'package:eccommerce/widgets/home_widgets/recent_products.dart';
import 'package:eccommerce/widgets/home_widgets/search_container.dart';
import 'package:eccommerce/widgets/shared/cart_counter_icon.dart';
import 'package:eccommerce/widgets/shared/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        CustomAppbar(
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery Address",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              Text(
                "Ikeja, Lagos",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          actions: [
            const CartCounterIcon(),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notification_important))
          ],
        ),
        const SearchContainer(),
        const HomeBanner(),
        const CategoryHome(),
        const RecentProducts()
      ],
    )));
  }
}

// NAVBAR
// CUSTOM APP BAR 
