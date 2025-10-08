import 'product.dart';

class Shirt extends Product {
  Shirt({
    required super.price,
    required super.productId,
    required super.size,
    required super.name,
  });

  @override
  printProduct() {
    print("Shirt $productId $name");
  }
}
