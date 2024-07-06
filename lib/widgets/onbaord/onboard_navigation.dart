import 'package:eccommerce/providers/page_controller_provider.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class OnbaordNavigation extends ConsumerWidget {
  const OnbaordNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(pageControllerProvider.notifier);
    return Positioned(
      left: AppSizes.defualtSpace,
      bottom: AppSizes.defualtSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        effect: const ExpandingDotsEffect(), // your preferred effect
        onDotClicked: controller.selectPage,
      ),
    );
  }
}
