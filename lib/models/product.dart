import 'package:eccommerce/models/category.dart';

class Product {
  final String id;
  final String name;
  final Category category;
  final double unitPrice;
  final String description;
  final String image;

  Product({
    required this.category,
    required this.description,
    required this.id,
    required this.name,
    required this.image,
    required this.unitPrice,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        "id": String id,
        "name": String name,
        "image": String image,
        "unitPrice": double unitPrice,
        "description": String description,
        "category": Category category,
      } =>
        Product(
            category: category,
            description: description,
            id: id,
            name: name,
            image: image,
            unitPrice: unitPrice),
      _ => throw const FormatException("Failed to Create Product")
    };
  }
}
