import 'package:dartz/dartz.dart';
import '../data/api/models/article_response/Article.dart';
import '../data/api/models/source_response/sources.dart';

abstract class ArticlesRepository{
  Future<Either<String, List<Article>>> getArticle(Source source);
}