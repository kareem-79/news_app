import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/api/models/article_response/Article.dart';
import 'package:news/core/resources/colors_managers.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    Color shadowColor=Theme.of(context).shadowColor;
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
            child: CachedNetworkImage(
              imageUrl: article.urlToImage ?? "",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(
                    value: downloadProgress.progress,
                    color:shadowColor ,
                  ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(height: 10.h),
          Text(maxLines: 3, article.title ?? "", style: theme.bodyMedium),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  article.author ?? "",
                  style: theme.bodySmall,
                ),
              ),
              SizedBox(width: 10.w),
              Text(article.publishedAt ?? "", style: theme.bodySmall),
            ],
          ),
        ],
      ),
    );
  }
}
