import 'package:dartz/dartz.dart';
import 'package:news/data/api/api_service.dart';
import 'package:news/data/api/models/article_response/Article.dart';
import 'package:news/data/data_article/article_ds.dart';

import '../api/models/source_response/sources.dart';

class ArticleApiDs implements ArticleDs {
  @override
  ApiService apiService;

  ArticleApiDs({required this.apiService});

  @override
  Future<Either<String, List<Article>>> getArticle(Source source) {
    return apiService.getArticle(source);
  }
}
