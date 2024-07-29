import 'package:eccommerce/models/product.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:eccommerce/widgets/shared/cart_counter_icon.dart';
import 'package:eccommerce/widgets/shared/section_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: const CartCounterIcon(),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Image.network(
                product.image,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(AppSizes.defualtPadding),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "\$${product.unitPrice}",
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.grey.withOpacity(0.3),
                                fixedSize: const Size(50, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            icon: const Icon(
                              Icons.favorite_outline,
                              size: 30,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBetweenItems,
                    ),
                    const SectionTitle(title: "Description of Product"),
                    const SizedBox(
                      height: AppSizes.spaceBetweenItems,
                    ),
                    Text(product.description)
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: AppSizes.defualtPadding,
            left: AppSizes.defualtPadding,
            right: AppSizes.defualtPadding,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Add To Cart")),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Buy Now"))),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
