import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage(
      {super.key,
      required this.borderRadius,
      required this.imageUrl,
      required this.width,
      required this.height});
  final double borderRadius;
  final double width;
  final double height;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: AppSizes.defualtPadding),
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
