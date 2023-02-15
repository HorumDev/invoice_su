import 'package:json_annotation/json_annotation.dart';

import '../../../../constants.dart';

part 'receipt.g.dart';

@JsonSerializable(includeIfNull: false)
class Reciept {
  Reciept({
    this.discount,
    required this.name,
    required this.resultPrice,
    required this.price,
    required this.quantity,
  });

  /// Преобразование json в модель
  factory Reciept.fromJson(Map<String, dynamic> json) =>
      _$RecieptFromJson(json);

  // @override
  Map<String, dynamic> toJson() => _$RecieptToJson(this);

  // @override
  // Map<String, Object?> get equals => <String, Object?>{
  //   JsonKeys.id: id,
  //   JsonKeys.currency: alias,
  // };

  // @override
  Reciept copyWith(
      {String? name,
      String? discount,
      num? resultPrice,
      num? price,
      num? quantity}) {
    return Reciept(
      name: name ?? this.name,
      discount: discount ?? this.discount,
      quantity: quantity ?? this.quantity,
      resultPrice: resultPrice ?? this.resultPrice,
      price: price ?? this.price,
    );
  }

  /// ID точки продаж
  @JsonKey(name: JsonKeys.name)
  final String name;

  @JsonKey(name: JsonKeys.discount)
  final String? discount;

  @JsonKey(name: JsonKeys.price)
  final num price;

  @JsonKey(name: JsonKeys.quantity)
  final num quantity;

  @JsonKey(name: JsonKeys.resultPrice)
  final num resultPrice;
}
