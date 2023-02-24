import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:royex_task/core/error/failure.dart';
import 'package:royex_task/domain/entities/product_entity.dart';
import 'package:royex_task/domain/use_cases/get_product_use_case.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductUseCase getProductUseCase;
  ProductBloc({required this.getProductUseCase}) : super(ProductInitial()) {
    on<GetProduct>((event, emit) async {
      emit(ProductLoading());
      Either<Failure, ProductEntity> result = await getProductUseCase();
      result.fold((l) => emit(ProductError(errorMessage: l.message)), (r) {
        emit(ProductSuccess(productEntity: r));
      });
    });
  }
}
