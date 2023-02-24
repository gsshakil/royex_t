import 'package:equatable/equatable.dart';

class VariantEntity extends Equatable {
  final int id;
  final int productId;
  final String title;
  final String price;
  final String sku;
  final int position;
  final String inventoryPolicy;
  final dynamic compareAtPrice;
  final String fulfillmentService;
  final String inventoryManagement;
  final String option1;
  final dynamic option2;
  final dynamic option3;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool taxable;
  final String barcode;
  final int grams;
  final dynamic imageId;
  final double weight;
  final String weightUnit;
  final int inventoryItemId;
  final int inventoryQuantity;
  final int oldInventoryQuantity;
  final bool requiresShipping;
  final String adminGraphqlApiId;

  const VariantEntity({
    required this.id,
    required this.productId,
    required this.title,
    required this.price,
    required this.sku,
    required this.position,
    required this.inventoryPolicy,
    this.compareAtPrice,
    required this.fulfillmentService,
    required this.inventoryManagement,
    required this.option1,
    this.option2,
    this.option3,
    required this.createdAt,
    required this.updatedAt,
    required this.taxable,
    required this.barcode,
    required this.grams,
    this.imageId,
    required this.weight,
    required this.weightUnit,
    required this.inventoryItemId,
    required this.inventoryQuantity,
    required this.oldInventoryQuantity,
    required this.requiresShipping,
    required this.adminGraphqlApiId,
  });

  @override
  List<Object?> get props => [
        id,
        productId,
        title,
        price,
        sku,
        position,
        inventoryPolicy,
        compareAtPrice,
        fulfillmentService,
        inventoryManagement,
        option1,
        option2,
        option3,
        createdAt,
        updatedAt,
        taxable,
        barcode,
        grams,
        imageId,
        weight,
        weightUnit,
        inventoryItemId,
        inventoryQuantity,
        requiresShipping,
        adminGraphqlApiId,
      ];
}
