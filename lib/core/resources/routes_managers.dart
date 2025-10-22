import 'package:flutter/material.dart';
import 'package:news/features/home/home_screen.dart';

abstract class RoutesManagers{
  static const String home="HomeScreen";
  static Map<String,WidgetBuilder>routes={
    home:(context)=>HomeScreen(),
  };
}