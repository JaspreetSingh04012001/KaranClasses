import 'Shirt.dart';
import 'Shoes.dart';
import 'product.dart';

class Inventory {
  final List<Shoes> shoes = [
    Shoes(price: 89.99, productId: "shoe001", size: "10", name: 'Nike Air Max'),
    Shoes(
      price: 120.50,
      productId: "shoe002",
      size: "9",
      name: 'Adidas Ultraboost',
    ),
    Shoes(
      price: 59.99,
      productId: "shoe003",
      size: "8",
      name: 'Puma Flyer Runner',
    ),
    Shoes(
      price: 150.00,
      productId: "shoe004",
      size: "11",
      name: 'Jordan Retro 4',
    ),
    Shoes(
      price: 70.00,
      productId: "shoe005",
      size: "10.5",
      name: 'New Balance 574',
    ),
  ];

  final List<Shirt> shirts = [
    Shirt(
      price: 29.99,
      productId: "shirt001",
      size: "M",
      name: 'Adidas Classic Tee',
    ),
    Shirt(price: 35.50, productId: "shirt002", size: "L", name: 'Nike Dri-FIT'),
    Shirt(
      price: 19.99,
      productId: "shirt003",
      size: "S",
      name: 'Puma Sport Tee',
    ),
    Shirt(
      price: 24.00,
      productId: "shirt004",
      size: "XL",
      name: 'Under Armour HeatGear',
    ),
    Shirt(
      price: 32.75,
      productId: "shirt005",
      size: "M",
      name: 'Reebok Activewear',
    ),
  ];

  List<Product> getProducts() {
    return [...shoes, ...shirts];
  }

  printProducts() {
    [...shoes, ...shirts].forEach((product) {
      product.printProduct();
    });
  }

  removeProductFromInventory(String productId) {
    // int? indexOfProductToBeRemoved;

    [...shirts, ...shoes].removeWhere((product) {
      if (product.productId == productId) {
        print(
          "${(product is Shoes) ? "Shoe" : "Shirt"} ${product.name} is removed",
        );
      }
      return product.productId == productId;
    });

    // shoes.removeWhere((shoes) {
    //   if (shoes.productId == productId) {
    //     print("Shoe ${shoes.name} is removed");
    //   }
    //   return shoes.productId == productId;
    // });
  }

  // for (var i = 0; i < shirts.length; i++) {
  //   if (shirts[i].productId == productToBeRemoved.productId) {
  //     indexOfProductToBeRemoved = i;
  //   }
  // }
  // if (indexOfProductToBeRemoved != null) {
  //   shirts.removeAt(indexOfProductToBeRemoved);
  //   print("${productToBeRemoved.name} is removed");
  // }
}
