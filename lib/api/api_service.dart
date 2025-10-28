import 'dart:convert';
import 'package:news/api/models/Source_response.dart';
import 'package:news/api/models/article_response/Article_response.dart';
import 'package:news/api/models/sources.dart';
import 'package:news/model/category_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "newsapi.org";
  static const String apiKey = "668580341fbb431b9830f5827506e38d";
  static const String sourcesEndPoint = "/v2/top-headlines/sources";
  static const String articleEndPoint = "/v2/everything";

  static Future<SourcesResponse> getSources(CategoryModel category) async {
    Uri url = Uri.https(baseUrl, sourcesEndPoint, {
      "apiKey": apiKey,
      "category": category.id,
    });
    http.Response serverResponse = await http.get(url);
    var json = jsonDecode(serverResponse.body);
    return SourcesResponse.fromJson(json);
  }
  static Future<ArticleResponse> getArticle(Source source) async {
    Uri url = Uri.https(baseUrl, articleEndPoint, {
      "apiKey": apiKey,
      "sources": source.id,
    });
    http.Response serverResponse = await http.get(url);
    var json = jsonDecode(serverResponse.body);
    return ArticleResponse.fromJson(json);
  }
}
