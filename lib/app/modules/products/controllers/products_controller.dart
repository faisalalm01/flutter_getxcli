import 'package:get/get.dart';

class ProductsController extends GetxController {
  //TODO: Implement ProductsController

  List<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": DateTime.now().toIso8601String(),
      "name": "sarung",
      "price": 80000000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "kopiah",
      "price": 80000000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "sajadah",
      "price": 80000000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "syal",
      "price": 80000000,
    },
  ].obs;
  void addProduct(String name, String price) {
    if (name.isNotEmpty && price.isNotEmpty) {
      allProducts.add({
        "id": DateTime.now().toIso8601String(),
        "name": name,
        "price": int.parse(price),
      });
      Get.back();
    }
  }
}
