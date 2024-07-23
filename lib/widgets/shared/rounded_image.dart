import 'dart:ffi';

import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    required this.borderRadius,
    required this.imageUrl,
    this.width,
    this.height,
    this.isNetworkImage = false,
  });
  final double borderRadius;
  final double? width;
  final double? height;
  final String imageUrl;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: AppSizes.defualtPadding),
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: isNetworkImage
            ? Image.network(
                imageUrl,
                fit: BoxFit.cover,
              )
            : Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
