import 'package:json_annotation/json_annotation.dart';

/// тип терминала
enum PointOfSalesType {
  /// интернет-магазин
  @JsonValue('online')
  online,

  /// наземная точка продаж
  @JsonValue('offline')
  offline,
}
