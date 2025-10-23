import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/resources/colors_managers.dart';
import 'package:news/model/article_model.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: ColorsManagers.white),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16.r),
            child: Image.network(article.urlToImage),
          ),
          SizedBox(height: 10.h),
          Text(article.title, style: theme.bodyMedium),
          SizedBox(height:10.h ,),
          Row(
            children: [
              Text(article.author, style: theme.bodySmall),
              Spacer(),
              Text(article.publishedAt, style: theme.bodySmall),
            ],
          ),
        ],
      ),
    );
  }
}
