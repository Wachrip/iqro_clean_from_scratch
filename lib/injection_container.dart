import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Firebase
  sl.registerLazySingleton(() => FirebaseFirestore);
}
