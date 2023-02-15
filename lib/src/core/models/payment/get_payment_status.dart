import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_request.dart';

part 'get_payment_status.g.dart';

@JsonSerializable(includeIfNull: false)
class GetPaymentStatus extends AcquiringRequest {
  GetPaymentStatus({
    required this.id,
    String? signToken,
  }) : super(signToken);

  /// Преобразование json в модель
  factory GetPaymentStatus.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentStatusFromJson(json);

  @override
  String get apiMethod => ApiMethods.getPayment;

  @override
  Map<String, dynamic> toJson() => _$GetPaymentStatusToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
    ...super.equals,
    JsonKeys.id: id,
  };

  @override
  GetPaymentStatus copyWith({
    String? signToken,
    String? id,
  }) {
    return GetPaymentStatus(
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
