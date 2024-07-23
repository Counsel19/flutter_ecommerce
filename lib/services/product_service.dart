import 'package:eccommerce/models/product.dart';
import 'package:eccommerce/services/category_service.dart';

final List<Product> allProducts = [
  Product(
    category: allCategories[0],
    description:
        "Effortless style meets comfort in this premium sneakers with durable elevated soles. These amazing running shoes will be your go-to pair for casual outings as its design easily stands the test of combining both fashion and function. Classic, refined, and modern, the upper fabric allows for breathability and the solid heels enable easy traction. The minimalist design means they’re perfect for the boardroom or the bar right after work.",
    id: "1",
    name: "Vangelo Men Trending Wedding Designers Shoes ",
    image: "https://shorturl.at/rA8oU",
    unitPrice: 19000,
  ),
  Product(
    category: allCategories[2],
    description:
        "Effortless style meets comfort in this premium sneakers with durable elevated soles. These amazing running shoes will be your go-to pair for casual outings as its design easily stands the test of combining both fashion and function. Classic, refined, and modern, the upper fabric allows for breathability and the solid heels enable easy traction. The minimalist design means they’re perfect for the boardroom or the bar right after work.",
    id: "4",
    name: "Vangelo Men Trending Wedding Designers Shoes ",
    image: "https://shorturl.at/rA8oU",
    unitPrice: 19000,
  ),
  Product(
    category: allCategories[3],
    description:
        "Effortless style meets comfort in this premium sneakers with durable elevated soles. These amazing running shoes will be your go-to pair for casual outings as its design easily stands the test of combining both fashion and function. Classic, refined, and modern, the upper fabric allows for breathability and the solid heels enable easy traction. The minimalist design means they’re perfect for the boardroom or the bar right after work.",
    id: "5",
    name: "Vangelo Men Trending Wedding Designers Shoes ",
    image: "https://shorturl.at/rA8oU",
    unitPrice: 19000,
  ),
  Product(
    category: allCategories[1],
    description:
        "Effortless style meets comfort in this premium sneakers with durable elevated soles. These amazing running shoes will be your go-to pair for casual outings as its design easily stands the test of combining both fashion and function. Classic, refined, and modern, the upper fabric allows for breathability and the solid heels enable easy traction. The minimalist design means they’re perfect for the boardroom or the bar right after work.",
    id: "1",
    name: "Vangelo Men Trending Wedding Designers Shoes ",
    image: "https://shorturl.at/rA8oU",
    unitPrice: 19000,
  ),
  Product(
    category: allCategories[2],
    description:
        "Effortless style meets comfort in this premium sneakers with durable elevated soles. These amazing running shoes will be your go-to pair for casual outings as its design easily stands the test of combining both fashion and function. Classic, refined, and modern, the upper fabric allows for breathability and the solid heels enable easy traction. The minimalist design means they’re perfect for the boardroom or the bar right after work.",
    id: "2",
    name: "Vangelo Men Trending Wedding Designers Shoes ",
    image: "https://shorturl.at/rA8oU",
    unitPrice: 19000,
  ),
  Product(
    category: allCategories[2],
    description:
        "Effortless style meets comfort in this premium sneakers with durable elevated soles. These amazing running shoes will be your go-to pair for casual outings as its design easily stands the test of combining both fashion and function. Classic, refined, and modern, the upper fabric allows for breathability and the solid heels enable easy traction. The minimalist design means they’re perfect for the boardroom or the bar right after work.",
    id: "6",
    name: "Vangelo Men Trending Wedding Designers Shoes ",
    image: "https://shorturl.at/rA8oU",
    unitPrice: 19000,
  ),
  Product(
    category: allCategories[2],
    description:
        "Effortless style meets comfort in this premium sneakers with durable elevated soles. These amazing running shoes will be your go-to pair for casual outings as its design easily stands the test of combining both fashion and function. Classic, refined, and modern, the upper fabric allows for breathability and the solid heels enable easy traction. The minimalist design means they’re perfect for the boardroom or the bar right after work.",
    id: "7",
    name: "Vangelo Men Trending Wedding Designers Shoes ",
    image: "https://shorturl.at/rA8oU",
    unitPrice: 19000,
  ),
];

class ProductService {
  List<Product> getAllProducts() {
    return allProducts;
  }
}
