import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:royex_task/core/network/i_network_client.dart';
import 'package:royex_task/core/network/network_client.dart';
import 'package:royex_task/data/data_sources/i_product_data_source.dart';
import 'package:royex_task/data/data_sources/product_data_source.dart';
import 'package:royex_task/data/repositories/product_repository.dart';
import 'package:royex_task/domain/repositories/i_product_repository.dart';
import 'package:royex_task/domain/use_cases/get_product_use_case.dart';
import 'package:royex_task/presentation/blocs/bloc/product_bloc.dart';

final injector = GetIt.instance;

Future<void> injectDependencies() async {
  injector.registerLazySingleton<Dio>(() => Dio());

  injector.registerLazySingleton<INetworkClient>(
      () => NetworkClient(dio: injector()));

  injector.registerLazySingleton<IProductDataSource>(
      () => ProductDataSource(networkClient: injector()));

  injector.registerLazySingleton<IProductRepository>(
      () => ProductRepository(productDataSource: injector()));

  injector.registerLazySingleton<GetProductUseCase>(
      () => GetProductUseCase(productRepository: injector()));

  injector.registerLazySingleton<ProductBloc>(
    () => ProductBloc(
      getProductUseCase: injector(),
    ),
  );
}
