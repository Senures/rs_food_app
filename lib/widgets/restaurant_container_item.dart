import 'package:flutter/material.dart';
import 'package:food_rs_app/models/restaurant-food-models.dart';

class RestaurantContainerItem extends StatelessWidget {
  final String name;
  final String iconImg;
  final String imgUrl;
  final String rating;
  final ButtonOnTap buttonOntap;
  final String price;
  final String piece;

  const RestaurantContainerItem(
      {Key? key,
      required this.name,
      required this.iconImg,
      required this.rating,
      required this.buttonOntap,
      required this.imgUrl,
      required this.price,
      required this.piece})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 2.0,
            spreadRadius: 2.0,
            color: Colors.grey.shade300,
            offset: const Offset(0, 4))
      ], color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(imgUrl, fit: BoxFit.cover),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0)),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              // color: Colors.blue,

              padding: const EdgeInsets.only(left: 12.0),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30.0,
                    //color: Colors.blue,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              color: Color(0xff010E16),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 7.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              iconImg,
                              width: 12.0,
                            ),
                            const SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              rating,
                              style: const TextStyle(
                                  color: Color(0xffB3B3B3),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                    style: TextStyle(
                        color: Color(0xff9B9B9B),
                        fontSize: 11.0,
                        fontWeight: FontWeight.w400),
                  ),

                  //widget.price diye belirt.
                  Text(
                    "\$ " + price,
                    // "\$ 7",
                    style: const TextStyle(
                        color: Color(0xff010E16),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 18.0,
                    height: 18.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2.0,
                              spreadRadius: 2.0,
                              color: Colors.grey.shade200)
                        ]),
                    child: const Icon(
                      Icons.remove,
                      size: 13.0,
                    ),
                  ),
                  Text(
                    piece,
                    style: const TextStyle(
                        color: Color(0xff010E16),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 18.0,
                    height: 18.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: buttonOntap == ButtonOnTap.isSelected
                            ? const Color(0xff010E16)
                            : Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              color: Colors.grey.shade200)
                        ]),
                    child: Icon(
                      Icons.add,
                      size: 13.0,
                      color: buttonOntap == ButtonOnTap.isSelected
                          ? Colors.white
                          : const Color(0xff010E16),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
