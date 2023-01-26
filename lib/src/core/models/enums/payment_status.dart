import 'package:json_annotation/json_annotation.dart';

/// Статус платежа
enum Status {
  ///
  @JsonValue('init')
  init,

  ///
  @JsonValue('process')
  process,

  ///
  @JsonValue('successful')
  successful,

  ///
  @JsonValue('error')
  error,

  ///
  @JsonValue('expired')
  expired,

  ///
  @JsonValue('closed')
  closed,

  ///
  @JsonValue('unknown')
  unknown,
}
