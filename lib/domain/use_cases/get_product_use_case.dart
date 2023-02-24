import 'package:dartz/dartz.dart';
import 'package:royex_task/core/error/failure.dart';
import 'package:royex_task/domain/entities/product_entity.dart';
import 'package:royex_task/domain/repositories/i_product_repository.dart';

class GetProductUseCase {
  IProductRepository productRepository;

  GetProductUseCase({required this.productRepository});

  Future<Either<Failure, ProductEntity>> call() async {
    return await productRepository.getProduct();
  }
}
