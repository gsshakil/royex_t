import 'package:equatable/equatable.dart';

class OptionEntity extends Equatable {
  final int id;
  final int productId;
  final String name;
  final int position;
  final List<String> values;

  const OptionEntity({
    required this.id,
    required this.productId,
    required this.name,
    required this.position,
    required this.values,
  });

  @override
  List<Object?> get props => [
        id,
        productId,
        name,
        position,
        values,
      ];
}
