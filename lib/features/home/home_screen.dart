import 'package:flutter/material.dart';
import 'package:news/core/resources/assets_managers.dart';
import 'package:news/core/resources/routes_managers.dart';
import 'package:news/features/home/home_drawer/home_drawer.dart';
import 'package:news/provider/home_screen_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeScreenProvider homeProvider;

  @override
  void initState() {
    super.initState();
    homeProvider = HomeScreenProvider();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: homeProvider,
      child: Consumer<HomeScreenProvider>(
        builder: (context, homeProvider, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text(homeProvider.title),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesManagers.search);
                  },
                  icon: ImageIcon(AssetImage(AssetsManager.searchIcon)),
                ),
              ],
            ),
            drawer: const HomeDrawer(),
            body: homeProvider.homeView,
          );
        },
      ),
    );
  }
}
