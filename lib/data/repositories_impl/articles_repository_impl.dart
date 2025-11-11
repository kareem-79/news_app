import 'package:dartz/dartz.dart';
import 'package:news/data/api/models/article_response/Article.dart';
import 'package:news/data/api/models/source_response/sources.dart';
import 'package:news/data/data_article/article_ds.dart';
import 'package:news/repositories/articles_repository.dart';

class ArticlesRepositoryImpl implements ArticlesRepository {
  ArticleDs articleDs;

  ArticlesRepositoryImpl({required this.articleDs});

  @override
  Future<Either<String, List<Article>>> getArticle(Source source) {
    return articleDs.getArticle(source);
  }
}
