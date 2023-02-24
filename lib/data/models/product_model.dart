import 'package:royex_task/data/models/image_model.dart';
import 'package:royex_task/data/models/option_model.dart';
import 'package:royex_task/data/models/variant_model.dart';
import 'package:royex_task/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    required super.id,
    required super.title,
    required super.bodyHtml,
    required super.vendor,
    required super.productType,
    required super.createdAt,
    required super.handle,
    required super.updatedAt,
    required super.publishedAt,
    required super.templateSuffix,
    required super.status,
    required super.publishedScope,
    required super.tags,
    required super.adminGraphqlApiId,
    required super.variants,
    required super.options,
    required super.images,
    required super.image,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        title: json["title"],
        bodyHtml: json["body_html"],
        vendor: json["vendor"],
        productType: json["product_type"],
        createdAt: DateTime.parse(json["created_at"]),
        handle: json["handle"],
        updatedAt: DateTime.parse(json["updated_at"]),
        publishedAt: DateTime.parse(json["published_at"]),
        templateSuffix: json["template_suffix"],
        status: json["status"],
        publishedScope: json["published_scope"],
        tags: json["tags"],
        adminGraphqlApiId: json["admin_graphql_api_id"],
        variants: List<VariantModel>.from(
            json["variants"].map((x) => VariantModel.fromJson(x))),
        options: List<OptionModel>.from(
            json["options"].map((x) => OptionModel.fromJson(x))),
        images: List<ImageModel>.from(
            json["images"].map((x) => ImageModel.fromJson(x))),
        image: ImageModel.fromJson(json["image"]),
      );
}
