import 'package:flutter/material.dart';

class HomeCategoriesText extends StatelessWidget {
  const HomeCategoriesText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Categories",
            style: TextStyle(
                color: Color(0xff010E16),
                fontSize: 18.0,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Show all",
            style: TextStyle(
                color: Color(0xff459FCA),
                fontSize: 12.0,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
