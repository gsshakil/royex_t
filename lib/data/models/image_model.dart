import 'package:royex_task/domain/entities/image_entity.dart';

class ImageModel extends ImageEntity {
  const ImageModel({
    required super.id,
    required super.productId,
    required super.position,
    required super.createdAt,
    required super.updatedAt,
    super.alt,
    required super.width,
    required super.height,
    required super.src,
    required super.variantIds,
    required super.adminGraphqlApiId,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json["id"],
        productId: json["product_id"],
        position: json["position"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        alt: json["alt"],
        width: json["width"],
        height: json["height"],
        src: json["src"],
        variantIds: List<dynamic>.from(json["variant_ids"].map((x) => x)),
        adminGraphqlApiId: json["admin_graphql_api_id"],
      );
}
