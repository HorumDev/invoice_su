// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reciept _$RecieptFromJson(Map<String, dynamic> json) => Reciept(
      discount: json['discount'] as String?,
      name: json['name'] as String,
      resultPrice: json['resultPrice'] as num,
      price: json['price'] as num,
      quantity: json['quantity'] as num,
    );

Map<String, dynamic> _$RecieptToJson(Reciept instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('discount', instance.discount);
  val['price'] = instance.price;
  val['quantity'] = instance.quantity;
  val['resultPrice'] = instance.resultPrice;
  return val;
}
