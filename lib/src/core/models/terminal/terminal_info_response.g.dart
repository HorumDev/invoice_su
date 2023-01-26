// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminalInfoResponse _$TerminalInfoResponseFromJson(
        Map<String, dynamic> json) =>
    TerminalInfoResponse(
      status: $enumDecodeNullable(_$StatusEnumMap, json['status'],
          unknownValue: Status.unknown),
      success: json['Success'] as bool?,
      errorCode: json['ErrorCode'] as String?,
      message: json['message'] as String?,
      details: json['details'] as String?,
      name: json['name'] as String,
      id: json['id'] as String,
      link: json['link'] as String,
      type: $enumDecode(_$TerminalTypeEnumMap, json['type'],
          unknownValue: TerminalType.statical),
      description: json['description'] as String?,
      defaultPrice: json['defaultPrice'] as num,
    );

Map<String, dynamic> _$TerminalInfoResponseToJson(
    TerminalInfoResponse instance) {
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
  val['link'] = instance.link;
  writeNotNull('description', instance.description);
  val['type'] = _$TerminalTypeEnumMap[instance.type]!;
  val['defaultPrice'] = instance.defaultPrice;
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

const _$TerminalTypeEnumMap = {
  TerminalType.statical: 'statical',
  TerminalType.dynamical: 'dynamical',
};
