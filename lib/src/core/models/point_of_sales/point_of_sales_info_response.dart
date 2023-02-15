import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_response.dart';
import '../enums/enums.dart';

part 'point_of_sales_info_response.g.dart';

/// Метод получает информацию о точке продаж
///
/// [GetPointOfSale](https://dev.invoice.su/#tag/Kassovoe-API/operation/GetPointOfSale)
@JsonSerializable(includeIfNull: false)
class PointOfSalesInfoResponse extends AcquiringResponse {
  PointOfSalesInfoResponse({
    Status? status,
    bool? success,
    String? errorCode,
    String? message,
    String? details,
    required this.name,
    required this.id,
    required this.website,
    required this.type,
    required this.alias,
    required this.address,
    required this.mail,
    required this.phone,
  }) : super(
          status: status,
          success: success,
          errorCode: errorCode,
          message: message,
          details: details,
        );

  /// Преобразование json в модель
  factory PointOfSalesInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$PointOfSalesInfoResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PointOfSalesInfoResponseToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.id: id,
        JsonKeys.name: name,
      };


  PointOfSalesInfoResponse copyWith({
    String? name,
    String? id,
    String? website,
    String? address,
    PointOfSalesType? type,
    String? alias,
    String? phone,
    String? mail,
  }) {
    return PointOfSalesInfoResponse(
      name: name ?? this.name,
      mail: mail ?? this.mail,
      address: address ?? this.address,
      type: type ?? this.type,
      website: website ?? this.website,
      id: id ?? this.id,
      phone: phone ?? this.phone,
      alias: alias ?? this.alias,
    );
  }

  /// Id терминала
  @JsonKey(name: JsonKeys.id)
  final String id;

  /// Название точки продаж
  @JsonKey(name: JsonKeys.name)
  final String name;

  /// Адрес онлайн-магазина (для online точек продаж)
  @JsonKey(name: JsonKeys.website)
  final String website;

  /// Адрес точки продаж (для онлайн-магазинов юр. адрес)
  @JsonKey(name: JsonKeys.address)
  final String address;

  /// Наземная точка продаж или онлайн-магазин
  @JsonKey(name: JsonKeys.type, unknownEnumValue: PointOfSalesType.offline)
  final PointOfSalesType type;

  /// alias терминала
  @JsonKey(name: JsonKeys.alias)
  final String alias;

  /// Email точки продаж
  @JsonKey(name: JsonKeys.mail)
  final String mail;

  /// Контактный телефон точки продаж
  @JsonKey(name: JsonKeys.phone)
  final String phone;
}
