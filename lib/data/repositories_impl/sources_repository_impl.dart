import 'package:dartz/dartz.dart';
import 'package:news/data/api/models/source_response/sources.dart';
import 'package:news/data/data_sources/sources_ds.dart';
import 'package:news/model/category_model.dart';
import 'package:news/repositories/sources_repository.dart';

class SourcesRepositoryImpl implements SourcesRepository{
  SourcesDs sourcesDs;
  SourcesRepositoryImpl({required this.sourcesDs});

  @override
  Future<Either<String, List<Source>>> getSources(CategoryModel category) {
    return sourcesDs.getSources(category);
  }

}