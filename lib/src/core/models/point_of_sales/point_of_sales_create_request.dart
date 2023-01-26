import 'package:json_annotation/json_annotation.dart';

import '../base/acquiring_request.dart';
import '../enums/enums.dart';

part 'point_of_sales_create_request.g.dart';

/// Метод инициирует новую точку продаж
///
/// [CreatePointOfSale](https://dev.invoice.su/#tag/Kassovoe-API/operation/CreatePointOfSale)
@JsonSerializable(includeIfNull: false)
class PointOfSalesCreateRequest extends AcquiringRequest {
  PointOfSalesCreateRequest({
    required this.name,
    this.website,
    this.type,
    this.alias,
    this.address,
    this.mail,
    this.phone,
    String? signToken,
  })  :
        super(signToken);

  /// Преобразование json в модель
  factory PointOfSalesCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$PointOfSalesCreateRequestFromJson(json);

  @override
  String get apiMethod => ApiMethods.createPointOfSale;

  @override
  Map<String, dynamic> toJson() => _$PointOfSalesCreateRequestToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
    ...super.equals,
    JsonKeys.name: name,
    JsonKeys.alias: alias,
  };

  @override
  PointOfSalesCreateRequest copyWith({
    String? signToken,
    String? website,
    String? address,
    PointOfSalesType? type,
    String? alias,
    String? phone,
    String? mail,
    String? name,
  }) {
    return PointOfSalesCreateRequest(
      signToken: signToken ?? this.signToken,
      name: name ?? this.name,
      mail: mail ?? this.mail,
      address: address ?? this.address,
      type: type ?? this.type,
      website: website ?? this.website,
      phone: phone ?? this.phone,
      alias: alias ?? this.alias,
    );
  }

  /// Название точки продаж
  @JsonKey(name: JsonKeys.name)
  final String name;

  /// Адрес онлайн-магазина (для online точек продаж)
  @JsonKey(name: JsonKeys.website)
  final String? website;

  /// Адрес точки продаж (для онлайн-магазинов юр. адрес)
  /// Default: "{Адрес юр. лица}"
  @JsonKey(name: JsonKeys.address)
  final String? address;

  /// Наземная точка продаж или онлайн-магазин
  @JsonKey(name: JsonKeys.type, unknownEnumValue: PointOfSalesType.offline)
  final PointOfSalesType? type;

  /// Уникальный идентификатор точки продаж в системе Продавца
  @JsonKey(name: JsonKeys.alias)
  final String? alias;

  /// Email точки продаж
  @JsonKey(name: JsonKeys.mail)
  final String? mail;

  /// Контактный телефон точки продаж
  @JsonKey(name: JsonKeys.phone)
  final String? phone;

  @override
  void validate() {
    // assert(id == null && alias == null);
  }

}
