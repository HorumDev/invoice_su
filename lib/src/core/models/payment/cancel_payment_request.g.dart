// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelPaymentRequest _$CancelPaymentRequestFromJson(
        Map<String, dynamic> json) =>
    CancelPaymentRequest(
      id: json['id'] as String,
      signToken: json['Token'] as String?,
    );

Map<String, dynamic> _$CancelPaymentRequestToJson(
    CancelPaymentRequest instance) {
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
