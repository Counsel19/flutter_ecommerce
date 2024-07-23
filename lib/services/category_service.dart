import 'package:eccommerce/models/category.dart';

final List<Category> allCategories = [
  Category(imageUrl: "https://shorturl.at/IHPnZ", id: "1", name: "Apparel"),
  Category(imageUrl: "https://shorturl.at/IHPnZ", id: "2", name: "Schools"),
  Category(imageUrl: "https://shorturl.at/IHPnZ", id: "3", name: "Sport"),
  Category(imageUrl: "https://shorturl.at/IHPnZ", id: "4", name: "Electronics"),
];

class CategoryService {
  List<Category> getAllCategories() {
    return allCategories;
  }
}
