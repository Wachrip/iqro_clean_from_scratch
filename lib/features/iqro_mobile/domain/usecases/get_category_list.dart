import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:iqro_clean_from_scratch/core/errors/failure.dart';
import 'package:iqro_clean_from_scratch/core/usecases/usecase.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/entities/category_entity.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/repositories/get_category_list_repository.dart';

class GetCategoryList
    implements UseCase<List<CategoryEntity>, CollectionNameParams> {
  final GetCategoryListRepository getCategoryListRepository;

  GetCategoryList({required this.getCategoryListRepository});

  @override
  Future<Either<Failure, List<CategoryEntity>>> call(
      CollectionNameParams collectionNameParams) async {
    // TODO: implement call
    return await getCategoryListRepository
        .getCategoryList(collectionNameParams.collectionName);
  }
}

class CollectionNameParams extends Equatable {
  final String collectionName;

  CollectionNameParams({required this.collectionName});

  @override
  // TODO: implement props
  List<Object?> get props => [collectionName];
}
