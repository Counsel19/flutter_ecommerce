import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSizes.defualtPadding,
          right: AppSizes.defualtPadding,
          bottom: AppSizes.defualtPadding),
      child: TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 10.0,
          ),
          hintText: "Search for Products",
        ),
      ),
    );
  }
}
