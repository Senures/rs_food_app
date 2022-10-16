class IconModel {
  String iconPath;
  IconStatus iconStatus;

  IconModel(this.iconPath, this.iconStatus);
}

enum IconStatus { isSelected, isNotSelected }

List<IconModel> icons = [
  IconModel("assets/Home_light.png", IconStatus.isSelected),
  IconModel("assets/Favorite_duotone.png", IconStatus.isNotSelected),
  IconModel("assets/fluent_cart-20-regular.png", IconStatus.isNotSelected),
  IconModel("assets/User_duotone.png", IconStatus.isNotSelected),
];
