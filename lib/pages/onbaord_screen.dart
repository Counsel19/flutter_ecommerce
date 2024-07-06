import 'package:eccommerce/providers/page_controller_provider.dart';
import 'package:eccommerce/widgets/onbaord/onbaord_next.dart';
import 'package:eccommerce/widgets/onbaord/onboard_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardScreen extends ConsumerWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(pageControllerProvider.notifier);
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.purple,
              ),
            ],
          ),
          const OnbaordNavigation(),
          const OnbaordNext()
        ],
      ),
    );
  }
}

// Todo
// click on a dotv to visit page - selectPage 
// Next => next page 
// skip to next page