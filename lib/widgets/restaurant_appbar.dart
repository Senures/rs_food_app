import 'package:flutter/material.dart';

restaurantAppbar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Container(
        alignment: Alignment.center,
        width: 40.0,
        height: 40.0,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xff9B9B9B)),
        child: Image.asset("assets/arrow.png")),
    elevation: 0.0,
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
            alignment: Alignment.center,
            width: 40.0,
            height: 40.0,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xff9B9B9B)),
            child: Icon(
              Icons.favorite_border,
              size: 26.0,
            )),
      ),
    ],
  );
}
