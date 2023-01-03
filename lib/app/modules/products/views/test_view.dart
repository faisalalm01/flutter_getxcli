import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TestView extends GetView {
  const TestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TestView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
