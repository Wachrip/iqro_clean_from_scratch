import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  String id;
  int priority;
  String title;
  String image;
  bool isActive;
  List articleList;

  CategoryEntity({
    required this.id,
    this.priority = 0,
    required this.title,
    this.image = '',
    this.isActive = true,
    this.articleList = const [],
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, priority, title, image, isActive, articleList];
}
