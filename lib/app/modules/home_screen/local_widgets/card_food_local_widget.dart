import 'package:flutter/material.dart';

class CardFoodLocalWidget extends Container {
  final String image, title, price;
  final double? width, height;
  final Color? color;

  final void Function()? onPressedAdd, onPressedFavorite;

  CardFoodLocalWidget({
    super.key,
    this.color,
    this.width = 162,
    this.height = 183,
    required this.image,
    required this.title,
    required this.price,
    required this.onPressedAdd,
    required this.onPressedFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(right: 0, child: IconButton(onPressed: onPressedFavorite, icon: Icon(Icons.favorite_border_outlined))),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Center(
                child: Image.asset(image),
              ),
            ),
            Positioned(
              width: 162,
              bottom: 40,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              width: 150,
              left: 12,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price, style: TextStyle(fontSize: 18)),
                  IconButton(onPressed: onPressedAdd, icon: Icon(Icons.add)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
