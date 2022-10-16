import 'package:flutter/material.dart';

customAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(50.0),
    child: SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18.0),
        // padding: EdgeInsets.only(left: 20.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
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
                      style:
                          TextStyle(color: Color(0xffB3B3B3), fontSize: 12.0),
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    Image.asset("assets/bi_chevron-down.png")
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/Bell_fill.png",
                  width: 50.0,
                ),
                Positioned(
                  right: 11.0,
                  top: 5.0,
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
            )
          ],
        ),
      ),
    ),
  );
}
