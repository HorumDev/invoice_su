// ignore_for_file: public_member_api_docs

abstract class JsonKeys {
  static const String id = 'id';
  static const String alias = 'alias';
  static const String description = 'description';
  static const String currency = 'currency';
  static const String statusDescription = 'status_description';
  static const String token = 'Token';
  static const String requestKey = 'RequestKey';
  static const String success = 'Success';
  static const String paymentUrl = 'payment_url';
  static const String errorCode = 'ErrorCode';
  static const String createDate = 'create_date';
  static const String updateDate = 'update_date';
  static const String expireDate = 'expire_date';
  static const String address = 'address';
  static const String website = 'website';
  static const String mail = 'mail';
  static const String phone = 'phone';
  static const String data = 'data';

  // static const String data2 = 'Data';
  static const String shops = 'Shops';
  static const String receipts = 'Receipts';
  static const String fee = 'Fee';
  static const String rebillId = 'RebillId';
  static const String account = 'account';
  static const String status = 'status';
  static const String paymentMethod = 'payment_method';
  static const String receipt = 'receipt';
  static const String password = 'Password';
  static const String paymentId = 'PaymentId';
  static const String terminalId = 'terminal_id';
  static const String pointId = 'pointId';
  static const String successUrl = 'success_url';
  static const String amount = 'amount';
  static const String order = 'order';
  static const String name = 'name';

  // static const String quantity = 'Quantity';
  static const String price = 'price';
  static const String resultPrice = 'resultPrice';
  static const String quantity = 'quantity';
  static const String discount = 'discount';
  static const String ean13 = 'Ean13';
  static const String shopCode = 'ShopCode';
  static const String agentData = 'AgentData';
  static const String supplierInfo = 'SupplierInfo';
  static const String emailCompany = 'EmailCompany';
  static const String taxation = 'Taxation';
  static const String items = 'Items';
  static const String inn = 'Inn';
  static const String encryptedPaymentData = 'EncryptedPaymentData';
  static const String route = 'Route';
  static const String source = 'Source';
  static const String failUrl = 'fail_url';
  static const String payType = 'PayType';
  static const String cardInfo = 'CardInfo';
  static const String version = 'Version';
  static const String tdsServerTransId = 'TdsServerTransId';
  static const String tdsServerTransID = 'TdsServerTransID';
  static const String threeDsMethodUrl = 'ThreeDSMethodURL';
  static const String recurExp = 'recur_exp';
  static const String recurFreq = 'recur_freq';
  static const String settings = 'settings';
  static const String trtype = 'trtype';
  static const String customParameters = 'custom_parameters';
  static const String date = 'Date';
  static const String message = 'message';
  static const String details = 'details';
  static const String defaultPrice = 'defaultPrice';
  static const String link = 'link';
  static const String type = 'type';
}

const List<String> _errors = [
  'Неверный Логин/API ключ',
  'Неверная валюта',
  'Неверная сумма',
  'Неверный айди терминала',
  'Неверный метод оплаты',
  'Неверный адрес успешной оплаты',
  'Неверный адрес ошибочной оплаты',
  'Заказ не найден (оплата не найдена)',
  'Выплата не найдена',
  'Платеж уже оплачен',
  'Платеж уже финализирован с ошибкой',
  'Платеж нельзя отменить, по нему начата оплата | Неверный alias терминала',
  'Неверный alias точки продаж',
  'Неверный ID точки продаж',
  'Ошибка соединения с базой данных'
];

String getError(int id) => _errors.length > id ? _errors[id] : _errors.last;

abstract class NetworkSettings {
  static const String domain = 'api.invoice.su';
  static const String apiPath = '/api';

  static const String apiVersion2 = 'v2';
  static const Duration timeout = Duration(seconds: 40);

  static const String contentType = 'content-type';
  static const String contentTypeJson = 'application/json';
  static const Map<String, String> baseHeaders = <String, String>{
    contentType: contentTypeJson,
  };
}

abstract class ApiMethods {
  static const String createTerminal = 'CreateTerminal';
  static const String createPointOfSale = 'CreatePointOfSale';
  static const String getTerminal = 'GetTerminal';
  static const String getPointOfSale = 'GetPointOfSale';
  static const String createPayment = 'CreatePayment';
  static const String getPayment = 'GetPayment';
  static const String getPaymentByOrder = 'GetPaymentByOrder';
  static const String closePayment = 'ClosePayment';
  static const String createRefund = 'CreateRefund';
  static const String getRefund = 'GetRefund';
  static const String recurringPayment = 'RecurringPayment';
// static const String recurring = 'Recurring';
// static const String cancel = 'Cancel';
// static const String changeRec = 'ChangeRec';
// static const String changeRecCard = 'ChangeRecCard';
// static const String setRec = 'SetRec';
// static const String cardEnroll = 'CardEnroll';
// static const String purchaseByToken = 'PurchaseByToken';
// static const String authorizeByToken = 'AuthorizeByToken';
// static const String recurringByToken = 'RecurringByToken';
// static const String p2pTransfer = 'P2PTransfer';
// static const String p2pFee = 'P2PFee';
// static const String purchaseSBP = 'PurchaseSBP';
// static const String purchaseSBPQRLink = 'PurchaseSBPQRLink';
}

abstract class Ignore {
  static const Set<String> ignoredFields = <String>{
    JsonKeys.data,
    JsonKeys.receipt,
    JsonKeys.receipts,
    JsonKeys.shops,
  };
}

abstract class CardSettings {
  static const List<int> defaultRangers = <int>[16];
  static const List<int> unknownRangers = <int>[13, 14, 15, 16, 17, 18, 19];
  static const List<int> maestroRangers = <int>[13, 14, 15, 16, 17, 18, 19];
  static const List<int> mirRanges = <int>[16, 18, 19];

  static final RegExp mirPattern = RegExp('^220[0-4]');
  static final RegExp cardNumberPattern = RegExp(r'^[0-9]+$');
  static final RegExp cardMaskedNumberPattern = RegExp(r'^[0-9*]+$');
  static final RegExp cvcCodePattern = RegExp(r'^[0-9]{3}$');

  static const int maxDateLength = 4;
  static const int maxCvcLength = 3;
}
