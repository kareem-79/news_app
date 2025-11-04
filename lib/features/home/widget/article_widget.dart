import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/api/models/article_response/Article.dart';
import 'package:news/features/home/widget/show_article_bottom_sheet.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Color shadowColor = Theme.of(context).shadowColor;
    return InkWell(
      borderRadius: BorderRadius.circular(16.r),
      onTap:(){
        _showArticleBottomSheet(context);
      },
      child: Container(
        padding: EdgeInsets.all(8.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: shadowColor),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16.r),
              child: CachedNetworkImage(
                imageUrl: article.urlToImage ?? "",
                fit: BoxFit.cover,
                height: 220.h,
                width: 345.w,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                      child: CircularProgressIndicator(
                        value: downloadProgress.progress,
                        color: shadowColor,
                      ),
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            SizedBox(height: 10.h),
            Text(maxLines: 3, article.title ?? "", style: textTheme.bodyMedium),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(article.author ?? "", style: textTheme.bodySmall),
                ),
                SizedBox(width: 10.w),
                Text(article.publishedAt ?? "", style: textTheme.bodySmall),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showArticleBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return ShowArticleBottomSheet(article: article,);
      },
    );
  }
}
