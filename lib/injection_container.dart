import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/data/repositories/get_category_list_repository_impl.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/repositories/get_category_list_repository.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/usecases/get_category_list_usecase.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/presentation/cubits/iman_cubit/iman_category_list_cubit.dart';

import 'features/iqro_mobile/data/datasources/iqro_mobile_remote_data_source.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Cubit
  sl.registerFactory(() => ImanCategoryListCubit(getCategoryList: sl()));

  //Usecases

  sl.registerLazySingleton(
      () => GetCategoryListUseCase(getCategoryListRepository: sl()));

  // Repositories

  sl.registerLazySingleton<GetCategoryListRepository>(
      () => GetCategoryListRepositoryImpl(remoteDataSource: sl()));

  //Remote Data Source
  sl.registerLazySingleton<IqroMobileRemoteDataSource>(
      () => IqroMobileRemoteDataSourceImpl());

  //Firebase
  sl.registerLazySingleton(() => FirebaseFirestore);
}
