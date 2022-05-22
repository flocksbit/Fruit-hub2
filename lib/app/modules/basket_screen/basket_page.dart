import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './basket_controller.dart';

class BasketPage extends GetView<BasketController> {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BasketPage'),
        leadingWidth: 100,
        leading: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Icon(Icons.arrow_back_ios_new_rounded, size: 20), Text('Go Back')],
          ),
        ),
      ),
      body: SafeArea(child: Text('BasketController')),
    );
  }
}
