import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_request.dart';
import '../base/acquiring_response.dart';
import '../enums/enums.dart';
import 'payment_models.dart';

part 'create_payment_response.g.dart';

@JsonSerializable(includeIfNull: false)
class CreatePaymentResponse extends AcquiringResponse {
  CreatePaymentResponse({
    Status? status,
    bool? success,
    String? errorCode,
    String? message,
    String? details,
    this.order,
    this.id,
    this.customParameters,
    this.createDate,
    this.updateDate,
    this.expireDate,
    this.paymentUrl,
    this.statusDescription,
    this.paymentMethod,
  }) : super(
          status: status,
          success: success,
          errorCode: errorCode,
          message: message,
          details: details,
        );

  /// Преобразование json в модель
  factory CreatePaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreatePaymentResponseToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.id: id,
        JsonKeys.paymentUrl: paymentUrl,
      };


  CreatePaymentResponse copyWith({
    PaymentMethod? paymentMethod,
    InvoiceOrder? order,
    String? id,
    Map<String, dynamic>? customParameters,
    DateTime? createDate,
    DateTime? updateDate,
    DateTime? expireDate,
    String? paymentUrl,
    String? statusDescription,
  }) {
    return CreatePaymentResponse(
      paymentMethod: paymentMethod ?? this.paymentMethod,
      paymentUrl: paymentUrl ?? this.paymentUrl,
      statusDescription: statusDescription ?? this.statusDescription,
      expireDate: expireDate ?? this.expireDate,
      updateDate: updateDate ?? this.updateDate,
      createDate: createDate ?? this.createDate,
      id: id ?? this.id,
      customParameters: customParameters ?? this.customParameters,
      order: order ?? this.order,
    );
  }

  /// ID платежа
  @JsonKey(name: JsonKeys.id)
  final String? id;

  /// Ссылка на платежную форму
  @JsonKey(name: JsonKeys.paymentUrl)
  final String? paymentUrl;

  /// Описание статуса/сообщение об ошибке
  @JsonKey(name: JsonKeys.statusDescription)
  final String? statusDescription;

  /// Дата создания операции
  @JsonKey(name: JsonKeys.createDate)
  final DateTime? createDate;

  /// Дата обновления операции
  @JsonKey(name: JsonKeys.updateDate)
  final DateTime? updateDate;

  /// Дата истечения операции
  @JsonKey(name: JsonKeys.expireDate)
  final DateTime? expireDate;

  /// заказ на оплату
  @JsonKey(name: JsonKeys.order)
  final InvoiceOrder? order;

  /// Можно передать абсолютно любые параметры, например userid.
  @JsonKey(name: JsonKeys.customParameters)
  final Map<String, dynamic>? customParameters;

  ///
  @JsonKey(name: JsonKeys.paymentMethod)
  final PaymentMethod? paymentMethod;
}
