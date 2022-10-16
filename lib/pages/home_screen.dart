import 'package:flutter/material.dart';
import 'package:food_rs_app/models/bottom_models.dart';
import 'package:food_rs_app/models/home_category_models.dart';
import 'package:food_rs_app/models/home_food_models.dart';
import 'package:food_rs_app/widgets/home-bottomnav.dart';
import 'package:food_rs_app/widgets/home-food-item.dart';
import 'package:food_rs_app/widgets/home_appbar.dart';
import 'package:food_rs_app/widgets/home_body_img.dart';
import 'package:food_rs_app/widgets/home_categories_text.dart';
import 'package:food_rs_app/widgets/home_restaurant_text.dart';
import 'package:food_rs_app/widgets/home_search_container.dart';
import 'package:food_rs_app/widgets/homecategory_item.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      for (var e in icons) {
        if (e.iconPath.contains(icons[index].iconPath)) {
          e.iconStatus = IconStatus.isSelected;
        } else {
          e.iconStatus = IconStatus.isNotSelected;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            customHomeSearchContainer(context),
            const HomeBodyImg(),
            const HomeCategoriesText(),
            Container(
              margin: const EdgeInsets.only(left: 10.0),
              height: MediaQuery.of(context).size.height * 0.14,
              // color: Colors.amber,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  HomeCategoryModel model = categoryList[index];
                  return HomeCategoryItem(
                      imgUrl: model.imgUrl, foodName: model.title);
                },
              ),
            ),
            const HomeRestaurantText(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                HomeFoodModel food = foodList[index];
                return HomeFoodItem(
                    imgUrl: food.imgUrl,
                    iconImg: food.iconImg,
                    status: food.status,
                    name: food.name,
                    foodMinutes: food.foodMinutes,
                    km: food.km,
                    rating: food.rating);
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: homeBottomNav(_onItemTapped),
    );
  }
}
