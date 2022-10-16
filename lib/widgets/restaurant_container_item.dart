import 'package:flutter/material.dart';

class RestaurantContainerItem extends StatelessWidget {
  final String name;
  final String iconImg;
  final String imgUrl;
  final String rating;
  final bool buttonOntap;
  final String price;

  const RestaurantContainerItem(
      {Key? key,
      required this.name,
      required this.iconImg,
      required this.rating,
      required this.buttonOntap,
      required this.imgUrl, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.11,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 2.0,
                spreadRadius: 2.0,
                color: Colors.grey.shade300,
                offset: const Offset(0, 4))
          ], color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 105.0,
                  height: 96.0,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(imgUrl, fit: BoxFit.cover),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  // color: Colors.blue,

                  padding: const EdgeInsets.symmetric(horizontal: 15.0),

                  //width: 175,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30.0,
                        // color: Colors.blue,
                        child: Row(
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                  color: Color(0xff010E16),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                        price,
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
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 20.0,
                        height: 20.0,
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
                      const Text(
                        "1",
                        style: TextStyle(
                            color: Color(0xff010E16),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                      //buda modelde adet sayısı die belirtilsin
                      Container(
                        alignment: Alignment.center,

                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            color: buttonOntap
                                ? const Color(0xff010E16)
                                : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                  color: Colors.grey.shade200)
                            ]),
                        //burda tıklanırsa icon rengi ve yazısı değişssin
                        //modelde true false durumlarıda olucak
                        child: Icon(
                          Icons.add,
                          size: 13.0,
                          color: buttonOntap
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
      },
    );
  }
}
