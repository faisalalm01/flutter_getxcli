import 'package:flutter/material.dart';

// import 'package:get/get.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView(this.data);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data["name"]),
      subtitle: Text("Rp ${data["price"]}"),
    );
  }
}
