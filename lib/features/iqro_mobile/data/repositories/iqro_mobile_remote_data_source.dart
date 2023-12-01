import 'package:iqro_clean_from_scratch/features/iqro_mobile/data/models/category_model.dart';

abstract class IqroMobileRemoteDataSource {
  Future<CategoryModel> get_category_list();
}
