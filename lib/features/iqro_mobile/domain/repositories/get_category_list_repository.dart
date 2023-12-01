import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/entities/category_entity.dart';

import '../../../../core/errors/failure.dart';

abstract class GetCategoryListRepository extends Equatable {
  Future<Either<Failure, List<CategoryEntity>>> getCategoryList(
      String collectionName);
}
