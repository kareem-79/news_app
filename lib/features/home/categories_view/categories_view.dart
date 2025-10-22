import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/home/widget/category_item.dart';
import 'package:news/model/category_model.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.onCategoryItemClicked,});
  final void Function(CategoryModel) onCategoryItemClicked;

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            "Good Morning\nHere is Some News For You.",
            style: theme.bodyLarge,
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => GestureDetector(
                onTap: (){
                  onCategoryItemClicked(CategoryModel.categories[index]);
                },
                child: CategoryItem(category: CategoryModel.categories[index]),
              ),
              separatorBuilder: (context, index) => SizedBox(height: 16.h),
              itemCount: CategoryModel.categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
