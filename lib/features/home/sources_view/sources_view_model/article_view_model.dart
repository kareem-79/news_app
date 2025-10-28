import 'package:flutter/material.dart';
import 'package:news/api/api_service.dart';
import 'package:news/api/models/article_response/Article.dart';
import 'package:news/api/models/article_response/Article_response.dart';
import 'package:news/api/models/sources.dart';

class ArticleViewModel extends ChangeNotifier{
  List<Article>articles=[];
  bool isLoading=false;
  void fetchArticle(Source source)async{
    isLoading=true;
    notifyListeners();
    ArticleResponse articleResponse=await ApiService.getArticle(source);
    isLoading=false;
    articles =articleResponse.articles??[];
    notifyListeners();
  }
}