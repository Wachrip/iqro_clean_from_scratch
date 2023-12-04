import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iqro_clean_from_scratch/core/constants.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/data/models/category_model.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/entities/category_entity.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/repositories/get_category_list_repository.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/usecases/get_category_list_usecase.dart';
import 'package:meta/meta.dart';

part 'iman_category_list_state.dart';

class ImanCategoryListCubit extends Cubit<ImanCategoryListState> {
  final GetCategoryListUseCase getCategoryList;
  ImanCategoryListCubit({required this.getCategoryList})
      : super(ImanCategoryListStateInitial());

  Future<void> getImanCategoryList() async {
    emit(ImanCategoryListStateLoading());

    final categoryList = await getCategoryList(
        CollectionNameParams(collectionName: COLLECTION_NAME_IMAN));

    categoryList.fold((l) => emit(Error()), (imanList) {
      List<CategoryModel> result = [];
      result.addAll(imanList as Iterable<CategoryModel>);
      emit(ImanCategoryListStateLoaded(categoryList: result));
    });
  }
}
