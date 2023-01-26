import 'package:json_annotation/json_annotation.dart';

import '../../../../constants.dart';

part 'invoice_order.g.dart';

@JsonSerializable(includeIfNull: false)
class InvoiceOrder {
  InvoiceOrder({
    this.id,
    this.description,
    this.currency,
    required this.amount,
  });

  /// Преобразование json в модель
  factory InvoiceOrder.fromJson(Map<String, dynamic> json) =>
      _$InvoiceOrderFromJson(json);

  // @override
  Map<String, dynamic> toJson() => _$InvoiceOrderToJson(this);

  // @override
  // Map<String, Object?> get equals => <String, Object?>{
  //   JsonKeys.id: id,
  //   JsonKeys.currency: alias,
  // };

  // @override
  InvoiceOrder copyWith(
      {String? description, String? currency, String? id, num? amount}) {
    return InvoiceOrder(
      amount: amount ?? this.amount,
      id: id ?? this.id,
      description: description ?? this.description,
      currency: currency ?? this.currency,
    );
  }

  /// ID точки продаж
  @JsonKey(name: JsonKeys.id)
  final String? id;

  /// Уникальный идентификатор точки продаж в системе Продавца
  @JsonKey(name: JsonKeys.currency)
  final String? currency;

  @JsonKey(name: JsonKeys.description)
  final String? description;

  @JsonKey(name: JsonKeys.amount)
  final num amount;
}
