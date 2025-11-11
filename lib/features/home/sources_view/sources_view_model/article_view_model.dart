import 'package:flutter/material.dart';
import 'package:news/data/api/api_service.dart';
import 'package:news/data/api/models/article_response/Article.dart';
import 'package:news/data/api/models/source_response/sources.dart';
import 'package:news/repositories/articles_repository.dart';

class ArticleViewModel extends ChangeNotifier {
  ArticlesRepository articlesRepository;

  ArticleViewModel({required this.articlesRepository});

  List<Article> articles = [];
  bool isLoading = false;
  String? errorMessage;

  void fetchArticle(Source source) async {
    isLoading = true;
    notifyListeners();
    var result = await articlesRepository.getArticle(source);
    isLoading = false;
    notifyListeners();
    result.fold(
      (error) {
        errorMessage = error;
      },
      (articleList) {
        articles = articleList;
      },
    );
    notifyListeners();
  }
}
