// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentRequest _$CreatePaymentRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentRequest(
      order: InvoiceOrder.fromJson(json['order'] as Map<String, dynamic>),
      settings:
          PaymentSettings.fromJson(json['settings'] as Map<String, dynamic>),
      receipt: (json['receipt'] as List<dynamic>?)
          ?.map((e) => Reciept.fromJson(e as Map<String, dynamic>))
          .toList(),
      customParameters: json['custom_parameters'] as Map<String, dynamic>?,
      phone: json['phone'] as String?,
      mail: json['mail'] as String?,
      trtype: json['trtype'] as String?,
      signToken: json['Token'] as String?,
    );

Map<String, dynamic> _$CreatePaymentRequestToJson(
    CreatePaymentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Token', instance.signToken);
  val['order'] = instance.order;
  val['settings'] = instance.settings;
  writeNotNull('receipt', instance.receipt);
  writeNotNull('custom_parameters', instance.customParameters);
  writeNotNull('phone', instance.phone);
  writeNotNull('mail', instance.mail);
  writeNotNull('trtype', instance.trtype);
  return val;
}
