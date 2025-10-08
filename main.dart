import 'Inventory/inventory.dart';

void main() {
  Inventory inventory = Inventory();

  inventory.printProducts();
  inventory.removeProductFromInventory("shoe003");
  //inventory.printProducts();

  List<String> name = ["karan", "jass", "bisht", "hello"];
}
// Cart - Shoes - inventory( Shoes - 10)