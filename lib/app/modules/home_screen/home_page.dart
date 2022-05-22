import 'package:flutter/material.dart';
import 'package:fruit_hub/app/core/utils/images.dart';
import 'package:fruit_hub/app/routes/pages.dart';
import 'package:get/get.dart';

import './local_widgets/card_food_local_widget.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.focusScope!.unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text('HomePage')),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(bottom: 24),
                    child: RichText(
                      text: TextSpan(
                        text: 'Hello Tony, ',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'What fruit salad combo do you want today?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search for fruit salad combos',
                          filled: true,
                          fillColor: Color(0xFFF3F4F9),
                        ),
                      )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.format_list_bulleted_rounded)),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40, bottom: 24),
                    child: Text('Recommended Combo', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CardFoodLocalWidget(
                        image: AppImages.cardFood,
                        title: 'Honey lime combo',
                        price: 'R\$ 2000',
                        onPressedAdd: () => Get.toNamed(Routes.basket),
                        onPressedFavorite: () {},
                      ),
                      CardFoodLocalWidget(
                        image: AppImages.cardFood,
                        title: 'Berry mango combo',
                        price: 'R\$ 8000',
                        onPressedAdd: () => Get.toNamed(Routes.basket),
                        onPressedFavorite: () {},
                      ),
                    ],
                  ),
                  // TODO: Trocar por tab
                  Container(
                    margin: EdgeInsets.only(top: 48, bottom: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Hottest', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
                        Text('Popular', style: TextStyle(fontSize: 16)),
                        Text('New combo', style: TextStyle(fontSize: 16)),
                        Text('Top', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardFoodLocalWidget(
                          width: 174,
                          height: 180,
                          color: Color(0xFFFFFAEB),
                          image: AppImages.cardFood,
                          title: 'Quinoa fruit salad',
                          price: 'R\$ 8000',
                          onPressedAdd: () => Get.toNamed(Routes.basket),
                          onPressedFavorite: () {},
                        ),
                        CardFoodLocalWidget(
                          width: 174,
                          height: 180,
                          color: Color(0xFFFEF0F0),
                          image: AppImages.cardFood,
                          title: 'Quinoa fruit salad',
                          price: 'R\$ 8000',
                          onPressedAdd: () => Get.toNamed(Routes.basket),
                          onPressedFavorite: () {},
                        ),
                        CardFoodLocalWidget(
                          width: 174,
                          height: 180,
                          color: Color(0xFFF1EFF6),
                          image: AppImages.cardFood,
                          title: 'Quinoa fruit salad',
                          price: 'R\$ 8000',
                          onPressedAdd: () => Get.toNamed(Routes.basket),
                          onPressedFavorite: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
