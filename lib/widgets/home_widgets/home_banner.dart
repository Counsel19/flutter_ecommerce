import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:eccommerce/widgets/shared/rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final bannerList = [
      "assets/banners/shoeBanner1.jpg",
      "assets/banners/shoeBanner1.jpg",
      "assets/banners/shoeBanner1.jpg",
    ];
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSizes.defualtPadding, bottom: AppSizes.defualtPadding),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          viewportFraction: 0.8,
        ),
        items: bannerList.map((item) {
          return Builder(
            builder: (BuildContext context) {
              return RoundedImage(
                borderRadius: 12,
                height: 30,
                width: MediaQuery.of(context).size.width * 0.8,
                imageUrl: item,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
