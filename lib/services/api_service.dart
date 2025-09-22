import "dart:convert";

import "package:shop_app/models/Product.dart";
import "package:http/http.dart" as http;

class APIService {
  Future<List<Product>> getProducts() async {
  final response = await http.get(Uri.parse("http://127.0.0.1:8000/api/products/?api_key=test"));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    List<Product> products = [];

    for (var product in data) {
      products.add(Product(
        id: product["id"],
        title: product["name"],
        price: product["price"],
        description: product["description"],
        images: [product["image"]],
        quantity: product["quantity"],
      ));
    }

    return products;
  } else {
    throw Exception("Failed to load album");
  }
}
}