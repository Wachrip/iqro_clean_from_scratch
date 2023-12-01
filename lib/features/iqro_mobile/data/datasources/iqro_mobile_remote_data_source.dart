import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../models/category_model.dart';

abstract class IqroMobileRemoteDataSource {
  Future<List<CategoryModel>> getCategoryModelList(String collectionName);
}

class IqroMobileRemoteDataSourceImpl implements IqroMobileRemoteDataSource {
  FirebaseFirestore firestoreDb = FirebaseFirestore.instance;

  @override
  Future<List<CategoryModel>> getCategoryModelList(
      String collectionName) async {
    // TODO: implement getCategoryModelList
    final stepList = await firestoreDb.collection(collectionName).get();
    print(stepList);
    CategoryModel temp = CategoryModel(
      id: 1,
    );
    return [temp];
  }
}
