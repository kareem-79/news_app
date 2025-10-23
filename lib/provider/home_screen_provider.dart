import 'package:flutter/material.dart';
import 'package:news/features/home/categories_view/categories_view.dart';
import 'package:news/features/home/sources_view/sources_view.dart';
import 'package:news/model/category_model.dart';

class HomeScreenProvider extends ChangeNotifier{
  Widget homeView=CategoriesView();
  String title="Home";
  void goToSourcesView(CategoryModel category){
    homeView=SourcesView(category: category);
    title=category.title;
    notifyListeners();
  }
  void goToCategoriesView(){
    homeView=CategoriesView();
    title="Home";
    notifyListeners();
  }
}