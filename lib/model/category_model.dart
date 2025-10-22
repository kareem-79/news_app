import 'package:news/core/resources/assets_managers.dart';

class CategoryModel {
  String id;
  String imageBath;
  String title;

  CategoryModel({
    required this.id,
    required this.imageBath,
    required this.title,
  });

  static List<CategoryModel> categories = [
    CategoryModel(id: "1", imageBath: AssetsManager.general, title: "General"),
    CategoryModel(
      id: "2",
      imageBath: AssetsManager.business,
      title: "Business",
    ),
    CategoryModel(id: "3", imageBath: AssetsManager.sports, title: "Sports"),
    CategoryModel(id: "4", imageBath: AssetsManager.science, title: "Science"),
    CategoryModel(
      id: "5",
      imageBath: AssetsManager.entertainment,
      title: "Entertainment",
    ),
    CategoryModel(
      id: "6",
      imageBath: AssetsManager.technology,
      title: "Technology",
    ),
    CategoryModel(id: "7", imageBath: AssetsManager.health, title: "Health"),
  ];
}
