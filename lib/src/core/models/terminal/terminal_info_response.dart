import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_response.dart';
import '../enums/enums.dart';

part 'terminal_info_response.g.dart';

/// Метод получает информацию о терминале
///
/// [GetTerminal](https://dev.invoice.su/#tag/Kassovoe-API/operation/GetTerminal)
@JsonSerializable(includeIfNull: false)
class TerminalInfoResponse extends AcquiringResponse {
  TerminalInfoResponse({
    Status? status,
    bool? success,
    String? errorCode,
    String? message,
    String? details,
    required this.name,
    required this.id,
    required this.link,
    required this.type,
    this.description,
    required this.defaultPrice,
  }) : super(
          status: status,
          success: success,
          errorCode: errorCode,
          message: message,
          details: details,
        );

  /// Преобразование json в модель
  factory TerminalInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalInfoResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TerminalInfoResponseToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.id: id,
        JsonKeys.name: name,
      };

  TerminalInfoResponse copyWith({
    String? name,
    String? id,
    String? link,
    String? description,
    TerminalType? type,
    num? defaultPrice,
  }) {
    return TerminalInfoResponse(
      name: name ?? this.name,
      defaultPrice: defaultPrice ?? this.defaultPrice,
      description: description ?? this.description,
      type: type ?? this.type,
      link: link ?? this.link,
      id: id ?? this.id,
    );
  }

  /// Id терминала
  @JsonKey(name: JsonKeys.id)
  final String id;

  /// name терминала
  @JsonKey(name: JsonKeys.name)
  final String name;

  /// link терминала
  @JsonKey(name: JsonKeys.link)
  final String link;

  /// description терминала
  @JsonKey(name: JsonKeys.description)
  final String? description;

  /// type терминала
  @JsonKey(name: JsonKeys.type, unknownEnumValue: TerminalType.statical)
  final TerminalType type;

  /// Сумма по-умолчанию
  @JsonKey(name: JsonKeys.defaultPrice)
  final num defaultPrice;
}
