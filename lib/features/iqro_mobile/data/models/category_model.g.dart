// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['id'],
      priority: json['priority'],
      title: json['title'],
      image: json['image'],
      isActive: json['isActive'],
      articleList: json['articleList'],
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'priority': instance.priority,
      'title': instance.title,
      'image': instance.image,
      'isActive': instance.isActive,
      'articleList': instance.articleList,
    };
