import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/resources/assets_managers.dart';
import 'package:news/model/category_model.dart';
import 'package:news/provider/config_provider.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final int index;

  const CategoryItem({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    ConfigProvider configProvider = Provider.of<ConfigProvider>(context);
    final isOddIndex = index % 2 != 0;
    final positionAsset = configProvider.currentTheme == ThemeMode.dark
        ? (isOddIndex ? AssetsManager.viewAllLeft : AssetsManager.viewAllRight)
        : (isOddIndex
              ? AssetsManager.viewAllLeftWhite
              : AssetsManager.viewAllRightWhite);
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Image.asset(
            configProvider.currentTheme == ThemeMode.dark
                ? category.imageBathWhite
                : category.imageBath,
          ),
        ),
        Positioned(
          bottom: 40.sp,
          left: isOddIndex ? 16.sp : null,
          right: isOddIndex ? null : 16.sp,
          child: Image.asset(positionAsset),
        ),
      ],
    );
  }
}
