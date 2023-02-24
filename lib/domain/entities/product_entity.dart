import 'package:equatable/equatable.dart';
import 'package:royex_task/domain/entities/image_entity.dart';
import 'package:royex_task/domain/entities/option_entity.dart';
import 'package:royex_task/domain/entities/variant_entity.dart';

class ProductEntity extends Equatable {
  final int id;
  final String title;
  final String bodyHtml;
  final String vendor;
  final String productType;
  final DateTime createdAt;
  final String handle;
  final DateTime updatedAt;
  final DateTime publishedAt;
  final String templateSuffix;
  final String status;
  final String publishedScope;
  final String tags;
  final String adminGraphqlApiId;
  final List<VariantEntity> variants;
  final List<OptionEntity> options;
  final List<ImageEntity> images;
  final ImageEntity image;

  const ProductEntity({
    required this.id,
    required this.title,
    required this.bodyHtml,
    required this.vendor,
    required this.productType,
    required this.createdAt,
    required this.handle,
    required this.updatedAt,
    required this.publishedAt,
    required this.templateSuffix,
    required this.status,
    required this.publishedScope,
    required this.tags,
    required this.adminGraphqlApiId,
    required this.variants,
    required this.options,
    required this.images,
    required this.image,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        bodyHtml,
        vendor,
        productType,
        createdAt,
        handle,
        updatedAt,
        publishedAt,
        templateSuffix,
        status,
        publishedScope,
        tags,
        adminGraphqlApiId,
        variants,
        options,
        images,
        image,
      ];
}
