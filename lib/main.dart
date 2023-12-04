import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/data/datasources/iqro_mobile_remote_data_source.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/data/repositories/get_category_list_repository_impl.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/domain/usecases/get_category_list_usecase.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/presentation/cubits/iman_cubit/iman_category_list_cubit.dart';
import 'package:iqro_clean_from_scratch/features/iqro_mobile/presentation/screens/iman_screen.dart';

import 'features/iqro_mobile/domain/repositories/get_category_list_repository.dart';
import 'firebase_options.dart';

import 'injection_container.dart' as di;
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // create: (context) => ImanCategoryListCubit(
          //     getCategoryList: GetCategoryList(
          //         getCategoryListRepository: GetCategoryListRepositoryImpl(
          //             remoteDataSource: IqroMobileRemoteDataSourceImpl()))),
          create: (context) => ImanCategoryListCubit(getCategoryList: sl()),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ImanScreen(),
      ),
    );
  }
}
