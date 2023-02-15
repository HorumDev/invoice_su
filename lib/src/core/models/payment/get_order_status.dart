import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_request.dart';

part 'get_order_status.g.dart';

@JsonSerializable(includeIfNull: false)
class GetOrderStatus extends AcquiringRequest {
  GetOrderStatus({
    required this.id,
    String? signToken,
  }) : super(signToken);

  /// Преобразование json в модель
  factory GetOrderStatus.fromJson(Map<String, dynamic> json) =>
      _$GetOrderStatusFromJson(json);

  @override
  String get apiMethod => ApiMethods.getPaymentByOrder;

  @override
  Map<String, dynamic> toJson() => _$GetOrderStatusToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
    ...super.equals,
    JsonKeys.id: id,
  };

  @override
  GetOrderStatus copyWith({
    String? signToken,
    String? id,
  }) {
    return GetOrderStatus(
      signToken: signToken ?? this.signToken,
      id: id ?? this.id,
    );
  }

  /// ID заказа в системе Продавца
  @JsonKey(name: JsonKeys.id)
  final String id;

  @override
  void validate() {
    // assert(id == null && alias == null);
  }
}
