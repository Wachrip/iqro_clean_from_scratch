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
    final categoryList = await firestoreDb.collection(collectionName).get();
    final data = categoryList.docs.map((doc) => doc.data()).toList();
    List<CategoryModel> categoryModelList =
        data.map((category) => CategoryModel.fromJson(category)).toList();

    return categoryModelList;
  }
}
