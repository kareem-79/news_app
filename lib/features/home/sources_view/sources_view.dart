import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/api/models/article_response/Article.dart';
import 'package:news/api/models/sources.dart';
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
  late SourcesViewModel sourceViewModel;
  late ArticleViewModel articleViewModel;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    sourceViewModel = SourcesViewModel();
    articleViewModel = ArticleViewModel();
    await sourceViewModel.fetchSources(widget.category);
    articleViewModel.fetchArticle(sourceViewModel.sources[0]);
  }

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Theme.of(context).shadowColor;
    TextTheme textTheme = Theme.of(context).textTheme;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: sourceViewModel),
        ChangeNotifierProvider.value(value: articleViewModel),
      ],
      child: Padding(
        padding: EdgeInsets.all(12.0.sp),
        child: Column(
          children: [
            Consumer<SourcesViewModel>(
              builder: (context, sourceViewModel, child) {
                if (sourceViewModel.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(color: shadowColor),
                  );
                }
                if (sourceViewModel.errorMessage != null) {
                  return Center(
                    child: Text(
                      sourceViewModel.errorMessage!,
                      style: textTheme.headlineMedium,
                    ),
                  );
                }
                List<Source> sources = sourceViewModel.sources;
                return DefaultTabController(
                  length: sources.length,
                  child: TabBar(
                    onTap: (index) {
                      articleViewModel.fetchArticle(sources[index]);
                    },
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    tabs: sources
                        .map((source) => Tab(text: source.name))
                        .toList(),
                  ),
                );
              },
            ),
            Consumer<ArticleViewModel>(
              builder: (context, articleViewModel, child) {
                if (articleViewModel.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(color: shadowColor),
                  );
                }
                if (articleViewModel.errorMessage != null) {
                  return Center(
                    child: Text(
                      articleViewModel.errorMessage!,
                      style: textTheme.headlineMedium,
                    ),
                  );
                }
                List<Article> articles = articleViewModel.articles;
                return Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.only(top: 20.sp),
                    itemBuilder: (context, index) => ArticleWidget(
                      article: articles[index],
                    ),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 20.h),
                    itemCount: articles.length,
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
