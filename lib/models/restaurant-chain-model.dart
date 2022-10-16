class ChainModel {
  final String typeName;
  final ChainStatus status;
  ChainModel({required this.typeName, required this.status});
}

enum ChainStatus { isSelected, isNotSelected }

List<ChainModel> chainList = [
  ChainModel(typeName: "Burger", status: ChainStatus.isSelected),
  ChainModel(typeName: "Fries", status: ChainStatus.isNotSelected),
  ChainModel(typeName: "Coac", status: ChainStatus.isNotSelected),
  ChainModel(typeName: "Meals", status: ChainStatus.isNotSelected),
  ChainModel(typeName: "Burger", status: ChainStatus.isNotSelected),
];
