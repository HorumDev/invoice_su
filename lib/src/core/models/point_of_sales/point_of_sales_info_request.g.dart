// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_of_sales_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PointOfFalesInfoRequest _$PointOfFalesInfoRequestFromJson(
        Map<String, dynamic> json) =>
    PointOfFalesInfoRequest(
      id: json['id'] as String?,
      alias: json['alias'] as String?,
      signToken: json['Token'] as String?,
    );

Map<String, dynamic> _$PointOfFalesInfoRequestToJson(
    PointOfFalesInfoRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Token', instance.signToken);
  writeNotNull('id', instance.id);
  writeNotNull('alias', instance.alias);
  return val;
}
