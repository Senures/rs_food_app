import 'package:flutter/material.dart';

class FoodDescription extends StatefulWidget {
  final String name;
  final String iconImg;
  final String rating;
  final String foodMinutes;

  final String km;
  FoodDescription(
      {Key? key,
      required this.name,
      required this.iconImg,
      required this.rating,
      required this.foodMinutes,
      required this.km})
      : super(key: key);

  @override
  State<FoodDescription> createState() => _FoodDescriptionState();
}

class _FoodDescriptionState extends State<FoodDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 20.0),
        child: Text(
          widget.name,
          style: const TextStyle(
              color: Color(0xff010E16),
              fontSize: 20.0,
              fontWeight: FontWeight.w600),
        ),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    widget.iconImg,
                    width: 20.0,
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    widget.rating,
                    style: const TextStyle(
                        color: Color(0xffB3B3B3),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                width: 15.0,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.access_time,
                    color: Color(0xffB3B3B3),
                    size: 18.0,
                  ),
                  label: Text(
                    widget.foodMinutes + " mins",
                    style: const TextStyle(
                        color: Color(0xffB3B3B3),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                width: 16.0,
              ),
              Container(
                  //color: Colors.red,
                  width: 45.0,
                  height: 20.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0),
                        child: Container(
                          width: 8.0,
                          height: 5.0,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffD9D9D9)),
                        ),
                      ),
                      Text(
                        widget.km + " km",
                        style: const TextStyle(
                            color: Color(0xffB3B3B3),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ))
            ],
          ))
    ]);
  }
}
