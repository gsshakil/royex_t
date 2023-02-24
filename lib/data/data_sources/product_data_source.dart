import 'dart:convert';
import 'dart:developer';

import 'package:royex_task/core/api_endpoints.dart';
import 'package:royex_task/core/env/env.dart';
import 'package:royex_task/core/network/i_network_client.dart';
import 'package:royex_task/data/data_sources/i_product_data_source.dart';
import 'package:royex_task/data/models/product_model.dart';

class ProductDataSource extends IProductDataSource {
  final INetworkClient networkClient;

  ProductDataSource({required this.networkClient});

  @override
  Future<ProductModel> getProduct() async {
    String result = await networkClient.get(
        paramas: NetworkParams(
      headers: {'X-Shopify-Access-Token': Env.shopifyApiKey},
      endPoint: APIEndPoints.productEndPoint,
    ));
    var decodedJson = json.decode(result);
    ProductModel response = ProductModel.fromJson(decodedJson['product']);

    return response;
  }
}
