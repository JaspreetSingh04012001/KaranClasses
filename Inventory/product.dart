class Product {
  double price;
  String productId;
  String size;
  String name;
  String? description;

  Product({
    required this.price,
    required this.productId,
    required this.size,
    required this.name,
    this.description,
  });

  printProduct() {
    print("$productId $name");
  }
}
