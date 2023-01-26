// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPaymentStatus _$GetPaymentStatusFromJson(Map<String, dynamic> json) =>
    GetPaymentStatus(
      id: json['id'] as String,
      signToken: json['Token'] as String?,
    );

Map<String, dynamic> _$GetPaymentStatusToJson(GetPaymentStatus instance) {
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
