class HomeCategoryModel {
  final String imgUrl;
  final String title;
  HomeCategoryModel({required this.imgUrl, required this.title});
}

List<HomeCategoryModel> categoryList = [
  HomeCategoryModel(imgUrl: "assets/pizza.png", title: "Pizza"),
  HomeCategoryModel(imgUrl: "assets/pancake.png", title: "Pan-cake"),
  HomeCategoryModel(imgUrl: "assets/sandwich.png", title: "Sandwich"),
  HomeCategoryModel(imgUrl: "assets/ice.png", title: "Ice-cream"),
  HomeCategoryModel(imgUrl: "assets/noodle.png", title: "Noodle"),
];