class Product {
  final String name;
  final String price;
  final String imageUrl;
  final String description;
  final String stock; // New property for amount in stock

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.stock, // Initialize the amount in stock
  });
}
