// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminalCreateRequest _$TerminalCreateRequestFromJson(
        Map<String, dynamic> json) =>
    TerminalCreateRequest(
      name: json['name'] as String,
      alias: json['alias'] as String?,
      pointId: json['pointId'] as String?,
      type: $enumDecodeNullable(_$TerminalTypeEnumMap, json['type'],
          unknownValue: TerminalType.statical),
      description: json['description'] as String?,
      defaultPrice: json['defaultPrice'] as num?,
      signToken: json['Token'] as String?,
    );

Map<String, dynamic> _$TerminalCreateRequestToJson(
    TerminalCreateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Token', instance.signToken);
  val['name'] = instance.name;
  writeNotNull('alias', instance.alias);
  writeNotNull('pointId', instance.pointId);
  writeNotNull('description', instance.description);
  writeNotNull('type', _$TerminalTypeEnumMap[instance.type]);
  writeNotNull('defaultPrice', instance.defaultPrice);
  return val;
}

const _$TerminalTypeEnumMap = {
  TerminalType.statical: 'statical',
  TerminalType.dynamical: 'dynamical',
};
