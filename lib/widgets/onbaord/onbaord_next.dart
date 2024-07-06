import 'package:eccommerce/providers/page_controller_provider.dart';
import 'package:eccommerce/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnbaordNext extends ConsumerWidget {
  const OnbaordNext({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      right: AppSizes.defualtSpace,
      bottom: AppSizes.defualtSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
        onPressed: () {
          ref.watch(pageControllerProvider.notifier).nextPage(context);
        },
        child: const Icon(
          Icons.arrow_right_outlined,
          size: 32,
        ),
      ),
    );
  }
}
