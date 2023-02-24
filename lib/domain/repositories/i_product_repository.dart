import 'package:dartz/dartz.dart';
import 'package:royex_task/core/error/failure.dart';
import 'package:royex_task/domain/entities/product_entity.dart';

abstract class IProductRepository {
  Future<Either<Failure, ProductEntity>> getProduct();
}
