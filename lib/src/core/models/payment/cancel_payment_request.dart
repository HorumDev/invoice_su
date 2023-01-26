import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_request.dart';

part 'cancel_payment_request.g.dart';

/// Метод инициирует отмену платежа
///
/// [ClosePayment](https://dev.invoice.su/#tag/Kassovoe-API/operation/ClosePayment)
@JsonSerializable(includeIfNull: false)
class CancelPaymentRequest extends AcquiringRequest {
  /// Создает экземпляр метода который инициирует привязку счета покупателя к магазину в СБП и возвращает информацию о нём.
  CancelPaymentRequest({
    required this.id,
    String? signToken,
  }) : super(signToken);

  /// Преобразование json в модель
  factory CancelPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$CancelPaymentRequestFromJson(json);

  @override
  String get apiMethod => ApiMethods.closePayment;

  @override
  Map<String, dynamic> toJson() => _$CancelPaymentRequestToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.id: id,
      };

  @override
  CancelPaymentRequest copyWith({
    String? signToken,
    String? id,
  }) {
    return CancelPaymentRequest(
      signToken: signToken ?? this.signToken,
      id: id ?? this.id,
    );
  }

  /// ID платежа
  @JsonKey(name: JsonKeys.id)
  final String id;

  @override
  void validate() {
    // assert(id == null && alias == null);
  }
}
