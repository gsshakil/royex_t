import 'package:equatable/equatable.dart';

class ImageEntity extends Equatable {
  final int id;
  final int productId;
  final int position;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic alt;
  final int width;
  final int height;
  final String src;
  final List<dynamic> variantIds;
  final String adminGraphqlApiId;

  const ImageEntity({
    required this.id,
    required this.productId,
    required this.position,
    required this.createdAt,
    required this.updatedAt,
    this.alt,
    required this.width,
    required this.height,
    required this.src,
    required this.variantIds,
    required this.adminGraphqlApiId,
  });

  @override
  List<Object?> get props => [
        id,
        productId,
        position,
        createdAt,
        updatedAt,
        alt,
        width,
        height,
        src,
        variantIds,
        adminGraphqlApiId,
      ];
}
