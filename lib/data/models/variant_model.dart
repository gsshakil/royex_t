import 'package:royex_task/domain/entities/variant_entity.dart';

class VariantModel extends VariantEntity {
  const VariantModel({
    required super.id,
    required super.productId,
    required super.title,
    required super.price,
    required super.sku,
    required super.position,
    required super.inventoryPolicy,
    super.compareAtPrice,
    required super.fulfillmentService,
    required super.inventoryManagement,
    required super.option1,
    super.option2,
    super.option3,
    required super.createdAt,
    required super.updatedAt,
    required super.taxable,
    required super.barcode,
    required super.grams,
    super.imageId,
    required super.weight,
    required super.weightUnit,
    required super.inventoryItemId,
    required super.inventoryQuantity,
    required super.oldInventoryQuantity,
    required super.requiresShipping,
    required super.adminGraphqlApiId,
  });

  factory VariantModel.fromJson(Map<String, dynamic> json) => VariantModel(
        id: json["id"],
        productId: json["product_id"],
        title: json["title"],
        price: json["price"],
        sku: json["sku"],
        position: json["position"],
        inventoryPolicy: json["inventory_policy"],
        compareAtPrice: json["compare_at_price"],
        fulfillmentService: json["fulfillment_service"],
        inventoryManagement: json["inventory_management"],
        option1: json["option1"],
        option2: json["option2"],
        option3: json["option3"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        taxable: json["taxable"],
        barcode: json["barcode"],
        grams: json["grams"],
        imageId: json["image_id"],
        weight: json["weight"],
        weightUnit: json["weight_unit"],
        inventoryItemId: json["inventory_item_id"],
        inventoryQuantity: json["inventory_quantity"],
        oldInventoryQuantity: json["old_inventory_quantity"],
        requiresShipping: json["requires_shipping"],
        adminGraphqlApiId: json["admin_graphql_api_id"],
      );
}
