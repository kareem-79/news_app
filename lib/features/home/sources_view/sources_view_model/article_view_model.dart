import 'package:flutter/material.dart';
import 'package:news/api/api_service.dart';
import 'package:news/api/models/article_response/Article.dart';
import 'package:news/api/models/sources.dart';

class ArticleViewModel extends ChangeNotifier {
  List<Article> articles = [];
  bool isLoading = false;
  String? errorMessage;

  void fetchArticle(Source source) async {
    isLoading = true;
    notifyListeners();
    var result = await ApiService.getArticle(source);
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
