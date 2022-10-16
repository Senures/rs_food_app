class HomeFoodModel {
   final String imgUrl;
  final String name;
  final String iconImg;
  final bool status;
  final String foodMinutes;
  final String rating;
  final String km;
  HomeFoodModel ({required this.imgUrl, required this.name,required this.iconImg,
  required this.foodMinutes,required this.km,required this.rating,required this.status
  });
}

List<HomeFoodModel> foodList = [
 HomeFoodModel(
  imgUrl:"assets/food1.png", name:"Burger King", 
  iconImg:"assets/star.png", foodMinutes:"25-35", km:"8", rating:"4.5", status: true),
   HomeFoodModel(
  imgUrl:"assets/food2.png", name:"Pizzania", 
  iconImg:"assets/star.png", foodMinutes:"20-25", km:"7", rating:"4.6", status: false),
   HomeFoodModel(
  imgUrl:"assets/food3.png", name:"Pancake", 
  iconImg:"assets/star.png", foodMinutes:"25-35", km:"8", rating:"4.2", status: true),
];