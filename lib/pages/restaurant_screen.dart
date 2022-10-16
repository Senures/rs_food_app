import 'package:flutter/material.dart';
import 'package:food_rs_app/models/restaurant-chain-model.dart';
import 'package:food_rs_app/models/restaurant-food-models.dart';
import 'package:food_rs_app/widgets/restaurant-banner-img.dart';
import 'package:food_rs_app/widgets/restaurant-chain-item.dart';
import 'package:food_rs_app/widgets/restaurant-food-description.dart';
import 'package:food_rs_app/widgets/restaurant_appbar.dart';
import 'package:food_rs_app/widgets/restaurant_container_item.dart';

class RestaurantScreen extends StatefulWidget {
  RestaurantScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: restaurantAppbar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
        child: Stack(
          children: [
            bannerImage(),
            Positioned(
              top: 235.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      FoodDescription(
                          name: "Burger King",
                          iconImg: "assets/star.png",
                          rating: "4.5",
                          foodMinutes: "25-35",
                          km: "8"),
                      Container(
                          margin: const EdgeInsets.only(
                              left: 23.0, top: 15.0, bottom: 10.0),
                          width: MediaQuery.of(context).size.width,
                          //color: Colors.amber,
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: chainList.length,
                            itemBuilder: (context, index) {
                              ChainModel chain = chainList[index];
                              return RestaurantChainItem(
                                foodType: chain.typeName,
                                color: chain.status == ChainStatus.isSelected
                                    ? const Color(0xff010E16)
                                    : Colors.white,
                                textColor:
                                    chain.status == ChainStatus.isSelected
                                        ? Colors.white
                                        : const Color(0xff010E16),
                              );
                            },
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Container(
                          //color: Colors.blue,
                          width: 600,
                          height: 400.0,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: resFoodList.length,
                            itemBuilder: (context, index) {
                              RestaurantFoodModel food = resFoodList[index];
                              return RestaurantContainerItem(
                                name: food.name,
                                iconImg: food.iconImg,
                                rating: food.rating,
                                buttonOntap: food.buttonOntap,
                                imgUrl: food.imgUrl,
                                price: food.price,
                                piece: food.piece,
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
