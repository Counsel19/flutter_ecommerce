import "package:eccommerce/pages/login_screen.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

class PageControllerNotifier extends Notifier<PageController> {
  final pageController = PageController();
  int currentPage = 0;
  @override
  PageController build() {
    return pageController;
  }

  void selectPage(int index) {
    currentPage = index;
    pageController.jumpToPage(index);
  }

  void nextPage(BuildContext context) {
    if (currentPage == 3) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    }
    currentPage += 1;
    pageController.nextPage(
      duration: const Duration(seconds: 2),
      curve: Curves.ease,
    );
  }
}

final pageControllerProvider =
    NotifierProvider<PageControllerNotifier, PageController>(() {
  return PageControllerNotifier();
});
