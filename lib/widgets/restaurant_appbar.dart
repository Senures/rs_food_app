import 'package:flutter/material.dart';

restaurantAppbar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    title: Container(
        alignment: Alignment.center,
        width: 35.0,
        height: 35.0,
        decoration: const BoxDecoration(
            color: Color(0xff9B9B9B), shape: BoxShape.circle),
        child: const Icon(
          Icons.arrow_back_ios_outlined,
          size: 20.0,
          color: Colors.white,
        )),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
            alignment: Alignment.center,
            width: 35.0,
            height: 35.0,
            decoration: const BoxDecoration(
                color: Color(0xff9B9B9B), shape: BoxShape.circle),
            child: const Icon(
              Icons.favorite_border_outlined,
              size: 20.0,
              color: Colors.white,
            )),
      ),
    ],
  );
}
