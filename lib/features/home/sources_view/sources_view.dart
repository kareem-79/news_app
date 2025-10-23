import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/home/widget/article_widget.dart';
import 'package:news/model/article_model.dart';
import 'package:news/model/category_model.dart';
import 'package:news/model/source_model.dart';

class SourcesView extends StatelessWidget {
  SourcesView({super.key, required this.category});

  final CategoryModel category;
  List<SourceModel> sources = [
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
    SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
  ];
  List<ArticleModel>article = [
    ArticleModel(source: SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
        author: "Elizabeth Schulze",
        title: "What we know about the donors funding the White House ballroom",
        description: "While the Trump administration has yet to release a full list of donors, a picture of donors and companies funding the project is beginning to emerge.",
        url: "https://abcnews.go.com/Politics/donors-funding-white-house-ballroom/story?id=126778550",
        urlToImage: "https://i.abcnewsfe.com/a/fd4837d2-e798-4705-96b6-87f105a6102e/donald-trump-12-rt-gmh-251022_1761168942169_hpMain_16x9.jpg?w=1600",
        publishedAt: "2025-10-23T03:10:42Z",
        content: "While the Trump administration has yet to release a full list of donors contributing to the planned construction of a White House ballroom, a picture of potential donors and companies funding the pro… [+3613 chars]"),ArticleModel(source: SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
        author: "Elizabeth Schulze",
        title: "What we know about the donors funding the White House ballroom",
        description: "While the Trump administration has yet to release a full list of donors, a picture of donors and companies funding the project is beginning to emerge.",
        url: "https://abcnews.go.com/Politics/donors-funding-white-house-ballroom/story?id=126778550",
        urlToImage: "https://i.abcnewsfe.com/a/fd4837d2-e798-4705-96b6-87f105a6102e/donald-trump-12-rt-gmh-251022_1761168942169_hpMain_16x9.jpg?w=1600",
        publishedAt: "2025-10-23T03:10:42Z",
        content: "While the Trump administration has yet to release a full list of donors contributing to the planned construction of a White House ballroom, a picture of potential donors and companies funding the pro… [+3613 chars]"),ArticleModel(source: SourceModel(
      id: "abc-news",
      name: "ABC News",
      description:
      "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
      url: "https://abcnews.go.com",
      category: "general",
      language: "en",
      country: "us",
    ),
        author: "Elizabeth Schulze",
        title: "What we know about the donors funding the White House ballroom",
        description: "While the Trump administration has yet to release a full list of donors, a picture of donors and companies funding the project is beginning to emerge.",
        url: "https://abcnews.go.com/Politics/donors-funding-white-house-ballroom/story?id=126778550",
        urlToImage: "https://i.abcnewsfe.com/a/fd4837d2-e798-4705-96b6-87f105a6102e/donald-trump-12-rt-gmh-251022_1761168942169_hpMain_16x9.jpg?w=1600",
        publishedAt: "2025-10-23T03:10:42Z",
        content: "While the Trump administration has yet to release a full list of donors contributing to the planned construction of a White House ballroom, a picture of potential donors and companies funding the pro… [+3613 chars]"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.sp),
      child: Column(
        children: [
          DefaultTabController(
            length: sources.length,
            child: TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              tabs: sources.map((source) => Tab(text: source.name)).toList(),
            ),
          ),
          SizedBox(height: 16.h,),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) =>ArticleWidget(article: article[index]),
              separatorBuilder: (context, index) =>SizedBox(height: 16.h,),
              itemCount: article.length,
            ),
          ),
        ],
      ),
    );
  }
}
