import 'package:flutter/material.dart';

customHomeSearchContainer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.74,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 2.0,
                    blurRadius: 2.0)
              ],
              borderRadius: BorderRadius.circular(5.0)),
          child: Row(
            children: [
              const SizedBox(
                width: 15.0,
              ),
              Image.asset("assets/Search_light.png"),
              const SizedBox(
                width: 5.0,
              ),
              const Text(
                "Search Your food or Restaurant",
                style: TextStyle(
                    color: Color(0xffCFCFCF),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.14,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 3.0,
                    blurRadius: 4.0)
              ],
              borderRadius: BorderRadius.circular(5.0)),
          child: Image.asset("assets/Filter.png"),
        ),
      ],
    ),
  );
}
