import 'package:eccommerce/models/cart.dart';
import 'package:eccommerce/services/product_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends Notifier<List<Cart>> {
  List<Cart> allCartItems = [
    Cart(
        productId: allProducts[0].id,
        product: allProducts[0],
        id: "1",
        quantity: 1)
  ];

  @override
  List<Cart> build() {
    return allCartItems;
  }

  bool checkIfItemInCart(Cart cartItem) {
    return state.any((item) => item.id == cartItem.id);
  }

  void addToCart(Cart cartItem) {
    if (checkIfItemInCart(cartItem)) {
      return;
    } else {
      allCartItems.add(cartItem);
    }
  }

  void increaseQuantity(Cart cartItem) {
    if (checkIfItemInCart(cartItem)) {
      state = state
          .map((item) => item.id == cartItem.id
              ? Cart(
                  id: item.id,
                  product: item.product,
                  productId: item.productId,
                  quantity: item.quantity + 1,
                )
              : item)
          .toList();
    }
  }

  void decreaseQuantity(Cart cartItem) {
    if (checkIfItemInCart(cartItem)) {
      state = state
          .map((item) => item.id == cartItem.id && item.quantity > 0
              ? Cart(
                  id: item.id,
                  product: item.product,
                  productId: item.productId,
                  quantity: item.quantity - 1,
                )
              : item)
          .toList();
      print(state);
    }
  }

  void removeFromCart(Cart cartItem) {
    if (checkIfItemInCart(cartItem)) {
      allCartItems.remove(cartItem);
    }
  }
}

final cartProvider = NotifierProvider<CartNotifier, List<Cart>>(() {
  return CartNotifier();
});
