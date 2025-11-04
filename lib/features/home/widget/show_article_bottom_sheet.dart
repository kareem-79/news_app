import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/api/models/article_response/Article.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowArticleBottomSheet extends StatelessWidget {
  const ShowArticleBottomSheet({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Theme.of(context).shadowColor;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.all(16.sp),
          padding: EdgeInsets.all(8.sp),
          decoration: BoxDecoration(
            color: shadowColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 8.sp,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: CachedNetworkImage(
                  imageUrl: article.urlToImage ?? "",
                  fit: BoxFit.cover,
                  height: 220.h,
                  width: 345.w,
                  errorWidget: (context, url, error) =>
                      Icon(Icons.error_outline),
                ),
              ),
              Text(article.description ?? "", style: textTheme.displaySmall),
              ElevatedButton(
                onPressed: ()async {
                  final uri=Uri.parse(article.url??"");
                  await launchUrl(uri,mode: LaunchMode.inAppWebView);
                },
                child: Text("View Full Article"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
