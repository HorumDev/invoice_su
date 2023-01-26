import 'package:json_annotation/json_annotation.dart';

import '../../../../constants.dart';

part 'payment_method.g.dart';

/// Метод инициирует привязку счета покупателя к магазину в СБП и возвращает информацию о нём.
///
/// [AddAccountQrRequest](https://www.tinkoff.ru/kassa/develop/api/payments-sbp/addaccountqr-request/)
@JsonSerializable(includeIfNull: false)
class PaymentMethod {
  /// Создает экземпляр метода который инициирует привязку счета покупателя к магазину в СБП и возвращает информацию о нём.
  PaymentMethod({
    this.terminalId,
    this.account,
    this.type,
  });

  /// Преобразование json в модель
  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);

  // @override
  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);

  // @override
  // Map<String, Object?> get equals => <String, Object?>{
  //   JsonKeys.id: id,
  //   JsonKeys.currency: alias,
  // };

  // @override
  PaymentMethod copyWith(
      {String? account, String? type, String? terminalId}) {
    return PaymentMethod(
      account: account ?? this.account,
      terminalId: terminalId ?? this.terminalId,
      type: type ?? this.type,
    );
  }

  /// Маскированный номер карты
  @JsonKey(name: JsonKeys.account)
  final String? account;

  /// Способ оплаты
  @JsonKey(name: JsonKeys.type)
  final String? type;

  ///ID терминала
  @JsonKey(name: JsonKeys.terminalId)
  final String? terminalId;

}
