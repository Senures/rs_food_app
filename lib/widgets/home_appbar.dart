import 'package:flutter/material.dart';

customAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 80.0,
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Stack(
          children: [
            Image.asset(
              "assets/Bell_fill.png",
              width: 50.0,
            ),
            Positioned(
              right: 10.0,
              top: 0.0,
              child: Container(
                alignment: Alignment.center,
                width: 16.0,
                height: 16.0,
                decoration: const BoxDecoration(
                    color: Colors.red, shape: BoxShape.circle),
                child: const Text(
                  "5",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
              ),
            ),
          ],
        ),
      )
    ],
    elevation: 0.0,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hi Noha!",
          style: TextStyle(
              letterSpacing: 0.5,
              color: Color(0xff010E16),
              fontWeight: FontWeight.bold,
              fontSize: 19.0),
        ),
        Row(
          children: [
            Image.asset("assets/ep_location.png"),
            const SizedBox(
              width: 3.0,
            ),
            const Text(
              "Location, Main City-Napgur",
              style: TextStyle(color: Color(0xffB3B3B3), fontSize: 12.0),
            ),
            const SizedBox(
              width: 3.0,
            ),
            Image.asset("assets/bi_chevron-down.png")
          ],
        ),
      ],
    ),
  );
}
