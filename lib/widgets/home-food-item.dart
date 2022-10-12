import 'package:flutter/material.dart';

class HomeFoodItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String iconImg;
  final bool status;
  final String foodMinutes;
  final String rating;
  final String km;
  const HomeFoodItem(
      {Key? key,
      required this.imgUrl,
      required this.iconImg,
      required this.status,
      required this.name,
      required this.foodMinutes,
      required this.km,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.13,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 2.0,
              spreadRadius: 2.0,
              color: Colors.grey.shade300,
              offset: const Offset(0, 4))
        ], color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imgUrl),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 170.0,
                  height: 50.0,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        name,
                        style: const TextStyle(
                            letterSpacing: .5,
                            color: Color(0xff010E16),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Image.asset(iconImg),
                          const SizedBox(
                            width: 3.0,
                          ),
                          Text(
                            rating,
                            style: const TextStyle(
                                color: Color(0xffB3B3B3),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.access_time,
                          color: Color(0xff9B9B9B),
                          size: 18.0,
                        ),
                        label: Text(
                          foodMinutes + " mins",
                          style: const TextStyle(
                              color: Color(0xffB3B3B3),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500),
                        )),
                    const SizedBox(
                      width: 3.0,
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
                                  shape: BoxShape.circle,
                                  color: Color(0xffD9D9D9)),
                            ),
                          ),
                          Text(
                            km + " km",
                            style: const TextStyle(
                                color: Color(0xffB3B3B3),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            status
                ? Container(
                    alignment: Alignment.center,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: 55.0,
                    height: 35.0,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        color: Color(0XFF010E16)),
                    child: const Text(
                      "New",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                : const SizedBox(
                    width: 55.0,
                  )
          ],
        ),
      ),
    );
  }
}
