import 'package:flutter/material.dart';

restauranBottomCard(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    width: MediaQuery.of(context).size.width,
    height: 68.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: const Color(0xff010E16),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "View Cart",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 19.0),
        ),
        Text(
          "\$ 7",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 19.0),
        )
      ],
    ),
  );
}
