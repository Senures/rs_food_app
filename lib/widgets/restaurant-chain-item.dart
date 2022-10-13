import 'package:flutter/material.dart';

class RestaurantChainItem extends StatefulWidget {
  final bool isSelected;
  final String foodType;
  RestaurantChainItem(
      {Key? key, required this.isSelected, required this.foodType})
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
        color: widget.isSelected ? const Color(0xff010E16) : Colors.white,
      ),
      child: Text(
        widget.foodType,
        style: TextStyle(
            color: widget.isSelected ? Colors.white : const Color(0xff010E16),
            fontSize: 13.0,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
