import 'package:flutter/material.dart';
import 'package:news/features/home/home_screen.dart';
import 'package:news/features/search/search_screen.dart';
import 'package:news/features/search/search_view_model/search_view_model.dart';
import 'package:provider/provider.dart';

abstract class RoutesManagers {
  static const String home = "HomeScreen";
  static const String search = "SearchScreen";
  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomeScreen(),
    search: (context) => ChangeNotifierProvider(
      create: (context) => SearchViewModel(),
      child: SearchScreen(),
    ),
  };
}
