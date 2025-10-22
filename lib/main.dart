import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/config/Theme/theme.dart';
import 'package:news/core/resources/routes_managers.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(393, 852),
      splitScreenMode: true,
      builder: (context,child)=>MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:RoutesManagers.home ,
        routes: RoutesManagers.routes,
        theme: ThemeManager.light,
        darkTheme: ThemeManager.dark,
        themeMode: ThemeMode.dark,
        locale: Locale("en"),
      ),
    );
  }
}

