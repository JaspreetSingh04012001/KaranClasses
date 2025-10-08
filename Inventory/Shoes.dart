import 'product.dart';

class Shoes extends Product {
  Shoes({
    required super.price,
    required super.productId,
    required super.size,
    required super.name,
  });
    @override
    printProduct() {
    print("Shoe $productId $name");
  }
}
