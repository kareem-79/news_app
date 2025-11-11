import 'package:dartz/dartz.dart';

import '../data/api/models/source_response/sources.dart';
import '../model/category_model.dart';

abstract class SourcesRepository{
  Future<Either<String, List<Source>>> getSources(CategoryModel category);
}