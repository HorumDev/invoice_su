// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_of_sales_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PointOfSalesCreateRequest _$PointOfSalesCreateRequestFromJson(
        Map<String, dynamic> json) =>
    PointOfSalesCreateRequest(
      name: json['name'] as String,
      website: json['website'] as String?,
      type: $enumDecodeNullable(_$PointOfSalesTypeEnumMap, json['type'],
          unknownValue: PointOfSalesType.offline),
      alias: json['alias'] as String?,
      address: json['address'] as String?,
      mail: json['mail'] as String?,
      phone: json['phone'] as String?,
      signToken: json['Token'] as String?,
    );

Map<String, dynamic> _$PointOfSalesCreateRequestToJson(
    PointOfSalesCreateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Token', instance.signToken);
  val['name'] = instance.name;
  writeNotNull('website', instance.website);
  writeNotNull('address', instance.address);
  writeNotNull('type', _$PointOfSalesTypeEnumMap[instance.type]);
  writeNotNull('alias', instance.alias);
  writeNotNull('mail', instance.mail);
  writeNotNull('phone', instance.phone);
  return val;
}

const _$PointOfSalesTypeEnumMap = {
  PointOfSalesType.online: 'online',
  PointOfSalesType.offline: 'offline',
};
