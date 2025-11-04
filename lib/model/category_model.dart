import 'package:news/core/resources/assets_managers.dart';

class CategoryModel {
  String id;
  String imageBath;
  String imageBathWhite;
  String title;

  CategoryModel({
    required this.id,
    required this.imageBath,
    required this.imageBathWhite,
    required this.title,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      id: "general",
      imageBath: AssetsManager.general,
      imageBathWhite: AssetsManager.generalWhite,
      title: "General",
    ),
    CategoryModel(
      id: "business",
      imageBath: AssetsManager.business,
      imageBathWhite: AssetsManager.businessWhite,
      title: "Business",
    ),
    CategoryModel(
      id: "sports",
      imageBath: AssetsManager.sports,
      imageBathWhite: AssetsManager.sportsWhite,
      title: "Sports",
    ),
    CategoryModel(
      id: "health",
      imageBath: AssetsManager.health,
      imageBathWhite: AssetsManager.healthWhite,
      title: "Health",
    ),
    CategoryModel(
      id: "science",
      imageBath: AssetsManager.science,
      imageBathWhite: AssetsManager.scienceWhite,
      title: "Science",
    ),
    CategoryModel(
      id: "technology",
      imageBath: AssetsManager.technology,
      imageBathWhite: AssetsManager.technologyWhite,
      title: "Technology",
    ),
    CategoryModel(
      id: "entertainment",
      imageBath: AssetsManager.entertainment,
      imageBathWhite: AssetsManager.entertainmentWhite,
      title: "Entertainment",
    ),
  ];
}
