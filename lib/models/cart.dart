import 'package:eccommerce/models/product.dart';

class Cart {
  final String id;
  final String productId;
  final Product product;
  int quantity;

  Cart({
    required this.productId,
    required this.product,
    required this.id,
    required this.quantity,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        "id": String id,
        "quantity": int quantity,
        "productId": String productId,
        "product": Product product,
      } =>
        Cart(
            productId: productId, product: product, id: id, quantity: quantity),
      _ => throw const FormatException("Failed to Create Cart")
    };
  }

  @override
  String toString() {
    return 'Cart{id: $id, productId: $productId, quantity: $quantity, product: $product}';
  }
}
