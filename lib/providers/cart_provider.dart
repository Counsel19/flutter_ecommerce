import 'package:eccommerce/models/cart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends Notifier<List<Cart>> {
  List<Cart> allCartItems = [];

  @override
  List<Cart> build() {
    return allCartItems;
  }

  bool checkIfItemInCart(String productId) {
    return state.any((item) => item.productId == productId);
  }

  void addToCart(Cart cartItem) {
    if (checkIfItemInCart(cartItem.productId)) {
      return;
    } else {
      // tis wont work => Spread operator
      // list2 = list1
      // list2 = [ ...list1 ]
      state = [...state, cartItem];
    }
     calculateSubTotl();
  }

  void increaseQuantity(Cart cartItem) {
    if (checkIfItemInCart(cartItem.productId)) {
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
     calculateSubTotl();
  }

  void decreaseQuantity(Cart cartItem) {
    if (checkIfItemInCart(cartItem.productId)) {
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
    }
    calculateSubTotl();
  }

  void removeFromCart(Cart cartItem) {
    if (checkIfItemInCart(cartItem.productId)) {
      state = state.where((item) => item.id != cartItem.id).toList();
    }
  }

  double calculateSubTotl() {
    double subTotal = 0;
    state.forEach((item) {
      subTotal += item.product.unitPrice * item.quantity;
    });

    return subTotal;
  }
}

final cartProvider = NotifierProvider<CartNotifier, List<Cart>>(() {
  return CartNotifier();
});
