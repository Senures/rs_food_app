import 'package:flutter/material.dart';
import 'package:food_rs_app/models/home_category_model.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      height: MediaQuery.of(context).size.height * 0.15,
      //color: Colors.red,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: ((context, index) {
            HomeCategoryModel model = categoryList[index];
            return Column(
              children: [
                Image.asset(model.imgUrl),
                Text(
                  model.title,
                  style: const TextStyle(
                      color: Color(0xff010E16),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0),
                )
              ],
            );
          })),
    );
  }
}
