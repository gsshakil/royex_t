import 'package:royex_task/core/error/exceptions.dart';
import 'package:royex_task/core/error/failure.dart';
import 'package:royex_task/data/data_sources/i_product_data_source.dart';
import 'package:royex_task/data/models/product_model.dart';
import 'package:royex_task/domain/entities/product_entity.dart';
import 'package:royex_task/domain/repositories/i_product_repository.dart';
import 'package:dartz/dartz.dart';

class ProductRepository extends IProductRepository {
  IProductDataSource productDataSource;
  ProductRepository({required this.productDataSource});

  @override
  Future<Either<Failure, ProductEntity>> getProduct() async {
    try {
      ProductModel result = await productDataSource.getProduct();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.errorMessage, code: e.code));
    }
  }
}
