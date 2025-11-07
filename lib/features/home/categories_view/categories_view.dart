import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/home/widget/category_item.dart';
import 'package:news/l10n/app_localizations.dart';
import 'package:news/model/category_model.dart';
import 'package:news/provider/home_screen_provider.dart';
import 'package:provider/provider.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenProvider homeProvider = Provider.of<HomeScreenProvider>(context);
    TextTheme theme = Theme.of(context).textTheme;
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            "${appLocalizations.greeting}\n${appLocalizations.news_intro}",
            style: theme.bodyLarge,
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  homeProvider.goToSourcesView(CategoryModel.categories[index]);
                },
                child: CategoryItem(
                  category: CategoryModel.categories[index],
                  index: index,
                ),
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
