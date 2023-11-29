import 'package:equatable/equatable.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/entities/category_entity.dart';

abstract class GetCategoryList extends Equatable {
  Future<CategoryEntity> getCategoryList(String collectionName);
}
