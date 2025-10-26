import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/resources/assets_managers.dart';
import 'package:news/model/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final int index;

  const CategoryItem({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    final isOddIndex = index % 2 != 0;
    final positionAsset = isOddIndex ? AssetsManager.viewAllLeft : AssetsManager.viewAllRight;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Image.asset(category.imageBathWhite),
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