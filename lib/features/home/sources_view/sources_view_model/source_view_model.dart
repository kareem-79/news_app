import 'package:flutter/material.dart';
import 'package:news/api/api_service.dart';
import 'package:news/api/models/Source_response.dart';
import 'package:news/api/models/sources.dart';
import 'package:news/model/category_model.dart';

class SourcesViewModel extends ChangeNotifier {
  List<Source> sources = [];
  bool isLoading=false;
  Future<void> fetchSources(CategoryModel category) async {
    isLoading=true;
    notifyListeners();
    SourcesResponse sourcesResponse = await ApiService.getSources(category);
    isLoading=false;
    sources = sourcesResponse.sources ?? [];
    notifyListeners();
  }
}
