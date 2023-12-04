import 'package:dartz/dartz.dart';
import 'package:iqro_clean_from_scratch/core/errors/failure.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/data/datasources/iqro_mobile_remote_data_source.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/data/models/category_model.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/entities/category_entity.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/repositories/get_category_list_repository.dart';

class GetCategoryListRepositoryImpl implements GetCategoryListRepository {
  IqroMobileRemoteDataSource remoteDataSource;

  GetCategoryListRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, List<CategoryEntity>>> getCategoryList(
      String collectionName) async {
    // TODO: implement getCategoryList
    final result = await remoteDataSource.getCategoryModelList(collectionName);

    return Right(result);
    throw UnimplementedError();
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}
