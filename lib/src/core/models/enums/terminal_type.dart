import 'package:json_annotation/json_annotation.dart';

/// тип терминала
enum TerminalType {
  /// Статический терминал. QR-код печатается 1 раз и клеится на кассу
  @JsonValue('statical')
  statical,

  /// Динамический терминал. QR-коды генерируется для каждой оплаты и может быть напечатан на пречеке либо передан иным способом
  @JsonValue('dynamical')
  dynamical,
}
