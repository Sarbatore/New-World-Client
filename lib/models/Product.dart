class Product {
  final int id, quantity;
  final String title, description;
  final List<String> images;
  final double price;

  Product({
    required this.id,
    required this.images,
    required this.title,
    required this.price,
    required this.description,
    required this.quantity,
  });
}

// Our demo Products
/*
List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/apples.png",
      "assets/images/apples.png",
      "assets/images/apples.png",
    ],
    title: "Pommes",
    price: 64.99,
    description: description,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/apples.png",
    ],
    title: "Pêches",
    price: 50.49,
    description: description,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/apples.png",
    ],
    title: "Poires",
    price: 36.49,
    description: description,
  ),
    Product(
    id: 4,
    images: [
      "assets/images/apples.png",
    ],
    title: "Abricots",
    price: 36.49,
    description: description,
  ),
    Product(
    id: 5,
    images: [
      "assets/images/apples.png",
    ],
    title: "Bananes",
    price: 36.49,
    description: description,
  ),
    Product(
    id: 6,
    images: [
      "assets/images/apples.png",
    ],
    title: "Framboises",
    price: 36.49,
    description: description,
  ),
    Product(
    id: 7,
    images: [
      "assets/images/apples.png",
    ],
    title: "Ananas",
    price: 36.49,
    description: description,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
*/