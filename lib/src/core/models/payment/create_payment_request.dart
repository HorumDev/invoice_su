import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_request.dart';
import 'payment_models.dart';

part 'create_payment_request.g.dart';

/// Метод инициирует привязку счета покупателя к магазину в СБП и возвращает информацию о нём.
///
/// [AddAccountQrRequest](https://www.tinkoff.ru/kassa/develop/api/payments-sbp/addaccountqr-request/)
@JsonSerializable(includeIfNull: false)
class CreatePaymentRequest extends AcquiringRequest {
  /// Создает экземпляр метода который инициирует привязку счета покупателя к магазину в СБП и возвращает информацию о нём.
  CreatePaymentRequest({
    required this.order,
    required this.settings,
    this.receipt,
    this.customParameters,
    this.phone,
    this.mail,
    this.trtype,
    String? signToken,
  }) : super(signToken);

  /// Преобразование json в модель
  factory CreatePaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentRequestFromJson(json);

  @override
  String get apiMethod => ApiMethods.createPayment;

  @override
  Map<String, dynamic> toJson() => _$CreatePaymentRequestToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.order: order,
        JsonKeys.settings: settings,
      };

  @override
  CreatePaymentRequest copyWith({
    String? signToken,
    Map<String, dynamic>? customParameters,
    InvoiceOrder? order,
    PaymentSettings? settings,
    List<Reciept>? receipt,
    String? mail,
    String? phone,
    String? trtype,
  }) {
    return CreatePaymentRequest(
      signToken: signToken ?? this.signToken,
      customParameters: customParameters ?? this.customParameters,
      settings: settings ?? this.settings,
      order: order ?? this.order,
      mail: mail ?? this.mail,
      phone: phone ?? this.phone,
      trtype: trtype ?? this.trtype,
    );
  }

  /// заказ на оплату
  @JsonKey(name: JsonKeys.order)
  final InvoiceOrder order;

  /// настройки платежа
  @JsonKey(name: JsonKeys.settings)
  final PaymentSettings settings;

  /// чеки
  @JsonKey(name: JsonKeys.receipt)
  final List<Reciept>? receipt;

  /// Можно передать абсолютно любые параметры, например userid.
  @JsonKey(name: JsonKeys.customParameters)
  final Map<String, dynamic>? customParameters;

  /// Номер телефона для доставки чека
  // Используется только при подключенной фискализации
  // Может быть изменен плательщиком в момент оплаты
  // Передается без +7
  @JsonKey(name: JsonKeys.phone)
  final String? phone;

  /// E-mail для доставки чека
  // Используется только при подключенной фискализации
  // Может быть изменен плательщиком в момент оплаты
  // При одновременной передаче с полем phone имеет больший приоритет
  @JsonKey(name: JsonKeys.mail)
  final String? mail;

  /// 1 - платеж
  // 4 - платеж с регистрацией рекуррента (доступны только для определенных шлюзов)
  @JsonKey(name: JsonKeys.trtype)
  final String? trtype;

  @override
  void validate() {
    // assert(id == null && alias == null);
  }
}
