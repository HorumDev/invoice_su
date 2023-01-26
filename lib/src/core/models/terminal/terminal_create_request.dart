import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_request.dart';
import '../enums/enums.dart';

part 'terminal_create_request.g.dart';

/// Метод инициирует новый терминал
///
/// [CreateTerminal](https://dev.invoice.su/#tag/Kassovoe-API/operation/CreateTerminal)
@JsonSerializable(includeIfNull: false)
class TerminalCreateRequest extends AcquiringRequest {
  TerminalCreateRequest({
    required this.name,
    this.alias,
    this.pointId,
    this.type,
    this.description,
    this.defaultPrice,
    String? signToken,
  }) : super(signToken);

  /// Преобразование json в модель
  factory TerminalCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminalCreateRequestFromJson(json);

  @override
  String get apiMethod => ApiMethods.createTerminal;

  @override
  Map<String, dynamic> toJson() => _$TerminalCreateRequestToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.name: name,
      };

  @override
  TerminalCreateRequest copyWith({
    String? signToken,
    String? alias,
    String? name,
    String? pointId,
    String? description,
    num? defaultPrice,
    TerminalType? type,
  }) {
    return TerminalCreateRequest(
      signToken: signToken ?? this.signToken,
      alias: alias ?? this.alias,
      name: name ?? this.name,
      pointId: pointId ?? this.pointId,
      description: description ?? this.description,
      type: type ?? this.type,
      defaultPrice: defaultPrice ?? this.defaultPrice,
    );
  }

  /// Название точки продаж
  @JsonKey(name: JsonKeys.name)
  final String name;

  /// Alias терминала
  @JsonKey(name: JsonKeys.alias)
  final String? alias;

  /// website терминала
  @JsonKey(name: JsonKeys.pointId)
  final String? pointId;

  /// description терминала
  @JsonKey(name: JsonKeys.description)
  final String? description;

  /// type терминала
  @JsonKey(name: JsonKeys.type, unknownEnumValue: TerminalType.statical)
  final TerminalType? type;

  /// Сумма по-умолчанию
  @JsonKey(name: JsonKeys.defaultPrice)
  final num? defaultPrice;

  @override
  void validate() {}
}
