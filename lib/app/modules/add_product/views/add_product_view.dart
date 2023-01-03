import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:testgetcli_final/app/modules/add_product/controllers/add_product_controller.dart';
import 'package:testgetcli_final/app/modules/products/controllers/products_controller.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  // const AddProductView({Key? key}) : super(key: key);
  final productC = Get.find<ProductsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AddProductView'),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(28),
          children: [
            TextField(
              controller: controller.nameC,
              decoration: InputDecoration(labelText: "Product Name"),
            ),
            TextField(
              controller: controller.priceC,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Product Price"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => productC.addProduct(
                  controller.nameC.text, controller.priceC.text),
              child: Text("ADD PRODUCT"),
            )
          ],
        ));
  }
}
