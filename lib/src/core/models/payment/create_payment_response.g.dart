// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentResponse _$CreatePaymentResponseFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentResponse(
      status: $enumDecodeNullable(_$StatusEnumMap, json['status'],
          unknownValue: Status.unknown),
      success: json['Success'] as bool?,
      errorCode: json['ErrorCode'] as String?,
      message: json['message'] as String?,
      details: json['details'] as String?,
      order: json['order'] == null
          ? null
          : InvoiceOrder.fromJson(json['order'] as Map<String, dynamic>),
      id: json['id'] as String?,
      customParameters: json['custom_parameters'] as Map<String, dynamic>?,
      createDate: json['create_date'] == null
          ? null
          : DateTime.parse(json['create_date'] as String),
      updateDate: json['update_date'] == null
          ? null
          : DateTime.parse(json['update_date'] as String),
      expireDate: json['expire_date'] == null
          ? null
          : DateTime.parse(json['expire_date'] as String),
      paymentUrl: json['payment_url'] as String?,
      statusDescription: json['status_description'] as String?,
      paymentMethod: json['payment_method'] == null
          ? null
          : PaymentMethod.fromJson(
              json['payment_method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePaymentResponseToJson(
    CreatePaymentResponse instance) {
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
  writeNotNull('id', instance.id);
  writeNotNull('payment_url', instance.paymentUrl);
  writeNotNull('status_description', instance.statusDescription);
  writeNotNull('create_date', instance.createDate?.toIso8601String());
  writeNotNull('update_date', instance.updateDate?.toIso8601String());
  writeNotNull('expire_date', instance.expireDate?.toIso8601String());
  writeNotNull('order', instance.order);
  writeNotNull('custom_parameters', instance.customParameters);
  writeNotNull('payment_method', instance.paymentMethod);
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
