import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/entities/category_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable(createToJson: true)
class CategoryModel extends CategoryEntity {
  CategoryModel({required id, priority, title, image, isActive, articleList})
      : super(
            id: id,
            title: title,
            image: image,
            isActive: isActive,
            articleList: articleList);
  @override
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
