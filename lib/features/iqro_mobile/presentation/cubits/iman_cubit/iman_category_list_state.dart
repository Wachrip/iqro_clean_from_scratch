part of 'iman_category_list_cubit.dart';

@immutable
abstract class ImanCategoryListState extends Equatable {
  const ImanCategoryListState();

  List<Object?> get props => [];
}

class ImanCategoryListStateInitial extends ImanCategoryListState {}

class ImanCategoryListStateLoading extends ImanCategoryListState {}

class ImanCategoryListStateLoaded extends ImanCategoryListState {
  final List<CategoryModel> categoryList;

  ImanCategoryListStateLoaded({required this.categoryList});

  List<Object?> get props => [categoryList];
}

class Error extends ImanCategoryListState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
