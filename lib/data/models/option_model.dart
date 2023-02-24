import 'package:royex_task/domain/entities/option_entity.dart';

class OptionModel extends OptionEntity {
  const OptionModel({
    required super.id,
    required super.productId,
    required super.name,
    required super.position,
    required super.values,
  });

  factory OptionModel.fromJson(Map<String, dynamic> json) => OptionModel(
        id: json["id"],
        productId: json["product_id"],
        name: json["name"],
        position: json["position"],
        values: List<String>.from(json["values"].map((x) => x)),
      );
}
