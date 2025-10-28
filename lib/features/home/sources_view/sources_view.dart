import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/home/sources_view/sources_view_model/article_view_model.dart';
import 'package:news/features/home/widget/article_widget.dart';
import 'package:news/model/category_model.dart';
import 'package:news/features/home/sources_view/sources_view_model/source_view_model.dart';
import 'package:provider/provider.dart';

class SourcesView extends StatefulWidget {
  const SourcesView({super.key, required this.category});
  final CategoryModel category;

  @override
  State<SourcesView> createState() => _SourcesViewState();
}

class _SourcesViewState extends State<SourcesView> {
  late SourcesViewModel sourceProvider;
  late ArticleViewModel articleProvider;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    sourceProvider = SourcesViewModel();
    articleProvider = ArticleViewModel();
    await sourceProvider.fetchSources(widget.category);
    articleProvider.fetchArticle(sourceProvider.sources[0]);
  }

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Theme.of(context).shadowColor;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: sourceProvider),
        ChangeNotifierProvider.value(value: articleProvider),
      ],
      child: Padding(
        padding: EdgeInsets.all(12.0.sp),
        child: Column(
          children: [
            Consumer<SourcesViewModel>(
              builder: (context, sourceProvider, child) {
                if (sourceProvider.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(color: shadowColor),
                  );
                }
                return DefaultTabController(
                  length: sourceProvider.sources.length,
                  child: TabBar(
                    onTap: (index) {
                      articleProvider.fetchArticle(
                        sourceProvider.sources[index],
                      );
                    },
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    tabs: sourceProvider.sources
                        .map((source) => Tab(text: source.name))
                        .toList(),
                  ),
                );
              },
            ),
            Consumer<ArticleViewModel>(
              builder: (context, articleProvider, child) {
                return Expanded(
                  child: articleProvider.isLoading
                      ? Center(
                          child: CircularProgressIndicator(color: shadowColor),
                        )
                      : ListView.separated(
                          padding: EdgeInsets.only(top: 20.sp),
                          itemBuilder: (context, index) => ArticleWidget(
                            article: articleProvider.articles[index],
                          ),
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 20.h),
                          itemCount: articleProvider.articles.length,
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
