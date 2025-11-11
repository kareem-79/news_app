import 'package:dartz/dartz.dart';
import 'package:news/data/api/api_service.dart';
import 'package:news/data/api/models/source_response/sources.dart';
import 'package:news/data/data_sources/sources_ds.dart';
import 'package:news/model/category_model.dart';

class SourcesApiDs implements SourcesDs {
  ApiService apiService;
  SourcesApiDs({required this.apiService});
  @override
  Future<Either<String, List<Source>>> getSources(CategoryModel category) {
    return apiService.getSources(category);
  }

}
