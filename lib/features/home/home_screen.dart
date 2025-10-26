import 'package:flutter/material.dart';
import 'package:news/core/resources/assets_managers.dart';
import 'package:news/features/home/home_drawer/home_drawer.dart';
import 'package:news/provider/home_screen_provider.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    HomeScreenProvider homeProvider=Provider.of<HomeScreenProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(homeProvider.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(AssetImage(AssetsManager.searchIcon)),
          ),
        ],
      ),
      drawer: HomeDrawer(),
      body: homeProvider.homeView,
    );
  }

}
