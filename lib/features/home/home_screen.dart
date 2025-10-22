import 'package:flutter/material.dart';
import 'package:news/core/resources/assets_managers.dart';
import 'package:news/core/resources/routes_managers.dart';
import 'package:news/features/home/categories_view/categories_view.dart';
import 'package:news/features/home/home_drawer/home_drawer.dart';
import 'package:news/features/home/sources_view/sources_view.dart';
import 'package:news/model/category_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Widget homeView = CategoriesView(
    onCategoryItemClicked: onCategoryItemClicked,
  );
  String title = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(AssetImage(AssetsManager.searchIcon)),
          ),
        ],
      ),
      drawer: HomeDrawer(goToHome: goToHome),
      body: homeView,
    );
  }

  void onCategoryItemClicked(CategoryModel selectedCategory) {
    homeView = SourcesView(category: selectedCategory);
    title = selectedCategory.title;
    setState(() {});
  }

  void goToHome() {
    homeView = CategoriesView(onCategoryItemClicked: onCategoryItemClicked);
    Navigator.pop(context);
    setState(() {});
  }
}
