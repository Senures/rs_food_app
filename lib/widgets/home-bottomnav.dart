//buraya paket eklenicek

import 'package:flutter/material.dart';
import 'package:food_rs_app/models/bottom_models.dart';

homeBottomNav(Function(int) _onItemTapped) {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    onTap: _onItemTapped,
    currentIndex: 1,
    showSelectedLabels: false,
    items: List.generate(
      icons.length,
      (index) => BottomNavigationBarItem(
          icon: Center(
            child: Container(
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                  color: icons[index].iconStatus == IconStatus.isSelected
                      ? const Color(0xff010E16)
                      : Colors.white,
                  shape: BoxShape.circle),
              child: Image.asset(
                icons[index].iconPath,
                color: icons[index].iconStatus == IconStatus.isSelected
                    ? Colors.white
                    : const Color(0xff9B9B9B),
              ),
            ),
          ),
          label: "",
          backgroundColor: Colors.white),
    ),
  );
}


