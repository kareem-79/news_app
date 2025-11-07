import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news/api/api_service.dart';
import 'package:news/api/models/article_response/Article.dart';

class SearchViewModel extends ChangeNotifier {
  final TextEditingController searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  List<Article> articles = [];
  bool isLoading = false;
  String? errorMessage;
  int page = 1;
  bool paginationLoading = false;

  SearchViewModel() {
    scrollController.addListener(() async {
      if (scrollController.position.atEdge) {
        bool isTop = scrollController.position.pixels == 0;
        if (!isTop && !paginationLoading) {
          page++;
          paginationLoading = true;
          notifyListeners();
          Future.delayed(Duration(seconds: 3), () {
            search(searchController.text);
          });
        }
      }
    });
  }

  Future<void> search(String query) async {
    if (articles.isEmpty) {
      isLoading = true;
      notifyListeners();
    }
    var result = await ApiService.searchArticle(query: query, page: page);
    isLoading = false;
    paginationLoading = false;
    notifyListeners();
    result.fold(
      (error) {
        return errorMessage;
      },
      (articlesList) {
        articles.addAll(articlesList);
      },
    );
    notifyListeners();
  }

  @override
  dispose() {
    searchController.dispose();
    scrollController.dispose();
    super.dispose();
  }
}
