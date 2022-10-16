class RestaurantFoodModel {
  final String name;
  final String iconImg;
  final String imgUrl;
  final String rating;
  final ButtonOnTap buttonOntap;
  final String price;
  final String piece;
  RestaurantFoodModel(
      {required this.piece,
      required this.name,
      required this.iconImg,
      required this.imgUrl,
      required this.rating,
      required this.buttonOntap,
      required this.price});
}

enum ButtonOnTap { isSelected, isNotSelected }

List<RestaurantFoodModel> resFoodList = [
  RestaurantFoodModel(
      name: "Chicken Burger",
      iconImg: "assets/star.png",
      imgUrl: "assets/food4.png",
      rating: "4.5",
      buttonOntap: ButtonOnTap.isSelected,
      price: "7",
      piece: "1"),
  RestaurantFoodModel(
      name: "Potato Corn Burger",
      iconImg: "assets/star.png",
      imgUrl: "assets/food5.png",
      rating: "4",
      buttonOntap: ButtonOnTap.isNotSelected,
      price: "8",
      piece: "0"),
  RestaurantFoodModel(
    name: "Supreme Veggie Burger",
    iconImg: "assets/star.png",
    imgUrl: "assets/food6.png",
    piece: "0",
    rating: "4.3",
    buttonOntap: ButtonOnTap.isNotSelected,
    price: "6",
  ),
  RestaurantFoodModel(
      name: "Pizza Burger",
      iconImg: "assets/star.png",
      imgUrl: "assets/food7.png",
      rating: "4.5",
      buttonOntap: ButtonOnTap.isNotSelected,
      price: "7",
      piece: "0")
];
