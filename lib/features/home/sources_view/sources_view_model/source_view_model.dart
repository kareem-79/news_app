import 'package:flutter/material.dart';
import 'package:news/api/api_service.dart';
import 'package:news/api/models/sources.dart';
import 'package:news/model/category_model.dart';

class SourcesViewModel extends ChangeNotifier {
  List<Source> sources = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchSources(CategoryModel category) async {
    isLoading = true;
    notifyListeners();
    var result = await ApiService.getSources(category);
    isLoading = false;
    notifyListeners();
    result.fold(
      (error) {
        errorMessage = error;
      },
      (sourcesList) {
        sources = sourcesList!;
      },
    );
    notifyListeners();
  }
}
