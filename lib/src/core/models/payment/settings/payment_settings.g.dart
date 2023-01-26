// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentSettings _$PaymentSettingsFromJson(Map<String, dynamic> json) =>
    PaymentSettings(
      successUrl: json['success_url'] as String?,
      terminalId: json['terminal_id'] as String,
      failUrl: json['fail_url'] as String?,
      recurFreq: json['recur_freq'] as String?,
      recurExp: json['recur_exp'] as String?,
    );

Map<String, dynamic> _$PaymentSettingsToJson(PaymentSettings instance) {
  final val = <String, dynamic>{
    'terminal_id': instance.terminalId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('success_url', instance.successUrl);
  writeNotNull('fail_url', instance.failUrl);
  writeNotNull('recur_exp', instance.recurExp);
  writeNotNull('recur_freq', instance.recurFreq);
  return val;
}
