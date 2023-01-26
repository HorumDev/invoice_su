// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acquiring_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcquiringResponse _$AcquiringResponseFromJson(Map<String, dynamic> json) =>
    AcquiringResponse(
      success: json['Success'] as bool?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status'],
          unknownValue: Status.unknown),
      errorCode: json['ErrorCode'] as String?,
      message: json['message'] as String?,
      details: json['details'] as String?,
    );

Map<String, dynamic> _$AcquiringResponseToJson(AcquiringResponse instance) =>
    <String, dynamic>{
      'Success': instance.success,
      'status': _$StatusEnumMap[instance.status],
      'ErrorCode': instance.errorCode,
      'message': instance.message,
      'details': instance.details,
    };

const _$StatusEnumMap = {
  Status.init: 'init',
  Status.process: 'process',
  Status.successful: 'successful',
  Status.error: 'error',
  Status.expired: 'expired',
  Status.closed: 'closed',
  Status.unknown: 'unknown',
};
