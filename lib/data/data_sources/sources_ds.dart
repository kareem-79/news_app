import 'package:dartz/dartz.dart';
import 'package:news/data/api/models/source_response/sources.dart';
import 'package:news/model/category_model.dart';

abstract class SourcesDs {
  Future<Either<String, List<Source>>> getSources(CategoryModel category);
}