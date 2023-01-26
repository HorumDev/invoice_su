import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_request.dart';

part 'terminal_info_request.g.dart';

/// Метод получает информацию о терминале
///
/// [GetTerminal](https://dev.invoice.su/#tag/Kassovoe-API/operation/GetTerminal)
@JsonSerializable(includeIfNull: false)
class TerminalInfoRequest extends AcquiringRequest {
  TerminalInfoRequest({
    this.id,
    this.alias,
    String? signToken,
  })  :
        super(signToken);

  /// Преобразование json в модель
  factory TerminalInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminalInfoRequestFromJson(json);

  @override
  String get apiMethod => ApiMethods.getTerminal;

  @override
  Map<String, dynamic> toJson() => _$TerminalInfoRequestToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.id: id,
        JsonKeys.alias: alias,
      };

  @override
  TerminalInfoRequest copyWith({
    String? signToken,
    String? alias,
    String? id,
  }) {
    return TerminalInfoRequest(
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
    assert(id == null || alias == null);
  }

}
