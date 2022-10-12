import 'package:flutter/material.dart';


class HomeCategoryItem extends StatelessWidget {
  final String imgUrl;
  final String foodName;
  const HomeCategoryItem({Key? key, required this.imgUrl, required this.foodName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
              Image.asset(imgUrl),
              Text(
                foodName,
                style: const TextStyle(
                    color: Color(0xff010E16),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0),
              )
            ],
          );
  }
}
