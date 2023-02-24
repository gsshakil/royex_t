import 'package:royex_task/data/models/product_model.dart';

abstract class IProductDataSource {
  Future<ProductModel> getProduct();
}
