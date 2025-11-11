import 'package:dartz/dartz.dart';
import 'package:news/data/api/api_service.dart';
import 'package:news/data/api/models/article_response/Article.dart';
import 'package:news/data/api/models/source_response/sources.dart';

abstract class ArticleDs{
  ApiService apiService;
  ArticleDs({required this.apiService});
  Future<Either<String, List<Article>>> getArticle(Source source);
}