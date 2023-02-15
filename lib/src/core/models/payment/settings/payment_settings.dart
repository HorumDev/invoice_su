import 'package:json_annotation/json_annotation.dart';

import '../../../../constants.dart';

part 'payment_settings.g.dart';

@JsonSerializable(includeIfNull: false)
class PaymentSettings {
  PaymentSettings({
    this.successUrl,
    required this.terminalId,
    this.failUrl,
    this.recurFreq,
    this.recurExp,
  });

  /// Преобразование json в модель
  factory PaymentSettings.fromJson(Map<String, dynamic> json) =>
      _$PaymentSettingsFromJson(json);

  // @override
  Map<String, dynamic> toJson() => _$PaymentSettingsToJson(this);

  // @override
  // Map<String, Object?> get equals => <String, Object?>{
  //   JsonKeys.id: id,
  //   JsonKeys.currency: alias,
  // };

  // @override
  PaymentSettings copyWith(
      {String? successUrl,
      String? failUrl,
      String? recurFreq,
      String? recurExp,
      String? terminalId}) {
    return PaymentSettings(
      successUrl: successUrl ?? this.successUrl,
      failUrl: failUrl ?? this.failUrl,
      recurFreq: recurFreq ?? this.recurFreq,
      recurExp: recurExp ?? this.recurExp,
      terminalId: terminalId ?? this.terminalId,
    );
  }

  /// ID терминала
  @JsonKey(name: JsonKeys.terminalId)
  final String terminalId;

  /// URL для редиректа в случае успешной оплаты (необязательно)
  @JsonKey(name: JsonKeys.successUrl)
  final String? successUrl;

  /// URL для редиректа в случае неуспешной оплаты (необязательно)
  @JsonKey(name: JsonKeys.failUrl)
  final String? failUrl;

  /// дата окончания рекуррентов в формате YYYYMMDD
  @JsonKey(name: JsonKeys.recurExp)
  final String? recurExp;

  /// минимальное количество дней между рекуррентными платежами
  @JsonKey(name: JsonKeys.recurFreq)
  final String? recurFreq;
}
