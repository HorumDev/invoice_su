// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderStatus _$GetOrderStatusFromJson(Map<String, dynamic> json) =>
    GetOrderStatus(
      id: json['id'] as String,
      signToken: json['Token'] as String?,
    );

Map<String, dynamic> _$GetOrderStatusToJson(GetOrderStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Token', instance.signToken);
  val['id'] = instance.id;
  return val;
}
