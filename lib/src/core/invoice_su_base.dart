import '../utils/network_client.dart';
import 'invoice_acquiring_config.dart';
import 'models/models.dart';

class InvoiceAcquiring {
  InvoiceAcquiring(this.config) : _network = NetworkClient(config);

  /// {@macro tinkoff_acquiring_config}
  final InvoiceAcquiringConfig config;

  /// {@macro network_client}
  final NetworkClient _network;

  /// Метод создания терминала
  Future<TerminalInfoResponse> createTerminal(TerminalCreateRequest request) =>
      _network(
        request,
        (Map<String, dynamic> json) => TerminalInfoResponse.fromJson(json),
      );

  /// Метод получения информации по терминалу
  Future<TerminalInfoResponse> getTerminal(TerminalInfoRequest request) =>
      _network(
        request,
        (Map<String, dynamic> json) => TerminalInfoResponse.fromJson(json),
      );

  /// Метод создания новой точки продаж
  Future<PointOfSalesInfoResponse> createPointOfSales(
          PointOfSalesCreateRequest request) =>
      _network(
        request,
        (Map<String, dynamic> json) => PointOfSalesInfoResponse.fromJson(json),
      );

  /// Метод получения информации по точке продаж
  Future<PointOfSalesInfoResponse> getPointOfSales(
          PointOfFalesInfoRequest request) =>
      _network(
        request,
        (Map<String, dynamic> json) => PointOfSalesInfoResponse.fromJson(json),
      );

  /// Метод создания платежа
  Future<CreatePaymentResponse> createPayment(CreatePaymentRequest request) =>
      _network(
        request,
        (Map<String, dynamic> json) => CreatePaymentResponse.fromJson(json),
      );

  /// Метод получения статуса по номеру платежа
  Future<CreatePaymentResponse> getPayment(GetPaymentStatus request) =>
      _network(
        request,
        (Map<String, dynamic> json) => CreatePaymentResponse.fromJson(json),
      );

  /// Метод получения статуса по номеру заказа
  Future<CreatePaymentResponse> getPaymentByOrder(GetOrderStatus request) =>
      _network(
        request,
        (Map<String, dynamic> json) => CreatePaymentResponse.fromJson(json),
      );

  /// Метод отмены платежа
  /// В случае успешной Отмены платежа вернется ответ со статусом closed
  Future<CreatePaymentResponse> cancelPayment(CancelPaymentRequest request) =>
      _network(
        request,
        (Map<String, dynamic> json) => CreatePaymentResponse.fromJson(json),
      );

//TODO refund
//TODO refundInfo
//TODO recurPay

}
