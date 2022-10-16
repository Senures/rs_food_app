import 'package:flutter/material.dart';

class RestaurantChainItem extends StatefulWidget {

  final String foodType;
  final Color color;
  final Color textColor;
  RestaurantChainItem(
      {Key? key, required this.foodType, required this.color, required this.textColor})
      : super(key: key);

  @override
  State<RestaurantChainItem> createState() => _RestaurantChainItemState();
}

class _RestaurantChainItemState extends State<RestaurantChainItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      alignment: Alignment.center,
      width: 75.0,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        border: Border.all(color: const Color(0xff010E16)),
        color: widget.color,
      ),
      child: Text(
        widget.foodType,
        style: TextStyle(
            color: widget.textColor,
            fontSize: 13.0,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
