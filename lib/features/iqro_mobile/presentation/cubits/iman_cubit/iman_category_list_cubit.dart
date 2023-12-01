import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/data/models/category_model.dart';
import 'package:meta/meta.dart';

import '../../../data/datasources/iqro_mobile_remote_data_source.dart';

part 'iman_category_list_state.dart';

class ImanCubit extends Cubit<ImanCategoryListState> {
  ImanCubit({required this.iqroMobileRemoteDataSourceImpl})
      : super(ImanCategoryListStateInitial());
  IqroMobileRemoteDataSourceImpl iqroMobileRemoteDataSourceImpl;

  static const collectionName = 'iman';

  Future<void> getImanCategoryList() async {
    emit(ImanCategoryListStateLoading());
    final categoryList = await iqroMobileRemoteDataSourceImpl
        .getCategoryModelList(collectionName);
    emit(ImanCategoryListStateLoaded(categoryList: categoryList));
  }
}
