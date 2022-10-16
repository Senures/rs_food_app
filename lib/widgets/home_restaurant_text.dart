import 'package:flutter/material.dart';

class HomeRestaurantText extends StatelessWidget {
  const HomeRestaurantText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 25.0, right: 25.0, top: 28.0, bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Restaurant",
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
