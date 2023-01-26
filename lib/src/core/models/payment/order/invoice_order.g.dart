// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceOrder _$InvoiceOrderFromJson(Map<String, dynamic> json) => InvoiceOrder(
      id: json['id'] as String?,
      description: json['description'] as String?,
      currency: json['currency'] as String?,
      amount: json['amount'] as num,
    );

Map<String, dynamic> _$InvoiceOrderToJson(InvoiceOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('currency', instance.currency);
  writeNotNull('description', instance.description);
  val['amount'] = instance.amount;
  return val;
}
