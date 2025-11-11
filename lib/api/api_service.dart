import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:news/api/models/Source_response.dart';
import 'package:news/api/models/article_response/Article_response.dart';
import 'package:news/api/models/sources.dart';
import 'package:news/model/category_model.dart';
import 'package:http/http.dart' as http;

import 'models/article_response/Article.dart';

class ApiService {
  static const String baseUrl = "newsapi.org";
  static const String apiKey = "668580341fbb431b9830f5827506e38d";
  static const String sourcesEndPoint = "/v2/top-headlines/sources";
  static const String articleEndPoint = "/v2/everything";

  static Future<Either<String, List<Source>?>> getSources(
    CategoryModel category,
  ) async {
    Uri url = Uri.https(baseUrl, sourcesEndPoint, {
      "apiKey": apiKey,
      "category": category.id,
    });
    http.Response serverResponse = await http.get(url);
    var json = jsonDecode(serverResponse.body);
    SourcesResponse sourcesResponse = SourcesResponse.fromJson(json);
    if (sourcesResponse.status == "error") {
      return left(sourcesResponse.message ?? "");
    } else {
      return right(sourcesResponse.sources);
    }
  }

  static Future<Either<String, List<Article>>> getArticle(Source source) async {
    Uri url = Uri.https(baseUrl, articleEndPoint, {
      "apiKey": apiKey,
      "sources": source.id,
    });
    http.Response serverResponse = await http.get(url);
    var json = jsonDecode(serverResponse.body);
    ArticleResponse articleResponse = ArticleResponse.fromJson(json);
    if (articleResponse.status == "error") {
      return left(articleResponse.message ?? "");
    } else {
      return right(articleResponse.articles ?? []);
    }
  }

  static Future<Either<String, List<Article>>> searchArticle({
    required String query,
    required int page,
  }) async {
    Uri url = Uri.https(baseUrl, articleEndPoint, {
      "apiKey": apiKey,
      "q": query,
      "page": page.toString(),
      "pageSize": "50",
    });
    http.Response serverResponse = await http.get(url);
    var json = jsonDecode(serverResponse.body);
    ArticleResponse articleResponse = ArticleResponse.fromJson(json);
    if (articleResponse.status == "error") {
      return left(articleResponse.message ?? "");
    } else {
      return right(articleResponse.articles ?? []);
    }
  }
}
