import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_request.dart';

part 'point_of_sales_info_request.g.dart';

/// Метод получает информацию о точке продаж
///
/// [GetPointOfSale](https://dev.invoice.su/#tag/Kassovoe-API/operation/GetPointOfSale)
@JsonSerializable(includeIfNull: false)
class PointOfFalesInfoRequest extends AcquiringRequest {
  /// Создает экземпляр метода который инициирует привязку счета покупателя к магазину в СБП и возвращает информацию о нём.
  PointOfFalesInfoRequest({
    this.id,
    this.alias,
    String? signToken,
  })  :
        super(signToken);

  /// Преобразование json в модель
  factory PointOfFalesInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$PointOfFalesInfoRequestFromJson(json);

  @override
  String get apiMethod => ApiMethods.getPointOfSale;

  @override
  Map<String, dynamic> toJson() => _$PointOfFalesInfoRequestToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.id: id,
        JsonKeys.alias: alias,
      };

  @override
  PointOfFalesInfoRequest copyWith({
    String? signToken,
    String? alias,
    String? id,
  }) {
    return PointOfFalesInfoRequest(
      signToken: signToken ?? this.signToken,
      alias: alias ?? this.alias,
      id: id ?? this.id,
    );
  }

  /// Id терминала
  @JsonKey(name: JsonKeys.id)
  final String? id;

  /// Alias терминала
  @JsonKey(name: JsonKeys.alias)
  final String? alias;

  @override
  void validate() {
    assert(id == null && alias == null);
  }

}
