import 'package:flutter/material.dart';
import 'package:news/data/api/models/source_response/sources.dart';
import 'package:news/model/category_model.dart';
import 'package:news/repositories/sources_repository.dart';

class SourcesViewModel extends ChangeNotifier {
  SourcesRepository sourcesRepository;
  SourcesViewModel({required this.sourcesRepository});
  List<Source> sources = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchSources(CategoryModel category) async {
    isLoading = true;
    notifyListeners();
    var result = await sourcesRepository.getSources(category);
    isLoading = false;
    notifyListeners();
    result.fold(
      (error) {
        errorMessage = error;
      },
      (sourcesList) {
        sources = sourcesList;
      },
    );
    notifyListeners();
  }
}
