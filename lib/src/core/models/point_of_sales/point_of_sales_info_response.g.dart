// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_of_sales_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PointOfSalesInfoResponse _$PointOfSalesInfoResponseFromJson(
        Map<String, dynamic> json) =>
    PointOfSalesInfoResponse(
      status: $enumDecodeNullable(_$StatusEnumMap, json['status'],
          unknownValue: Status.unknown),
      success: json['Success'] as bool?,
      errorCode: json['ErrorCode'] as String?,
      message: json['message'] as String?,
      details: json['details'] as String?,
      name: json['name'] as String,
      id: json['id'] as String,
      website: json['website'] as String,
      type: $enumDecode(_$PointOfSalesTypeEnumMap, json['type'],
          unknownValue: PointOfSalesType.offline),
      alias: json['alias'] as String,
      address: json['address'] as String,
      mail: json['mail'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$PointOfSalesInfoResponseToJson(
    PointOfSalesInfoResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Success', instance.success);
  writeNotNull('status', _$StatusEnumMap[instance.status]);
  writeNotNull('ErrorCode', instance.errorCode);
  writeNotNull('message', instance.message);
  writeNotNull('details', instance.details);
  val['id'] = instance.id;
  val['name'] = instance.name;
  val['website'] = instance.website;
  val['address'] = instance.address;
  val['type'] = _$PointOfSalesTypeEnumMap[instance.type]!;
  val['alias'] = instance.alias;
  val['mail'] = instance.mail;
  val['phone'] = instance.phone;
  return val;
}

const _$StatusEnumMap = {
  Status.init: 'init',
  Status.process: 'process',
  Status.successful: 'successful',
  Status.error: 'error',
  Status.expired: 'expired',
  Status.closed: 'closed',
  Status.unknown: 'unknown',
};

const _$PointOfSalesTypeEnumMap = {
  PointOfSalesType.online: 'online',
  PointOfSalesType.offline: 'offline',
};
