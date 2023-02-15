import '../utils/logger.dart';
import 'models/base/base.dart';

/// {@template proxy_mapping}
/// Функция позволяющая модифицировать запрос к proxy api.
/// Позволяет изменять путь и загаловок запроса.
/// {@endtemplate}
typedef ProxyMapping = ProxyRequest? Function(
  AcquiringRequest request,
  bool isDebugMode,
);

/// {@template invoice_acquiring_config}
/// Класс позволяет конфигурировать SDK.
/// {@endtemplate}
abstract class InvoiceAcquiringConfig {
  /// Создает экземпляр класса для конфигурирования SDK, через `apiKey` и `login`.
  factory InvoiceAcquiringConfig.credential({
    required String login,
    required String apiKey,
    bool isDebugMode,
    BaseLogger logger,
  }) = InvoiceAcquiringConfigCredential;


  const InvoiceAcquiringConfig._({
    this.isDebugMode = true,
    this.logger = const Logger(),
  });

  /// Параметр для работы с debug сервером
  final bool isDebugMode;

  /// Позволяет использовать свой логгер или заданный
  final BaseLogger logger;

  /// Uri до Invoice Acquiring
  Uri url(String path) => Uri.https(
        NetworkSettings.domain,
        path,

      );
}


/// Создает экземпляр класса для конфигурирования SDK, через `login` и `apiKey`.
class InvoiceAcquiringConfigCredential extends InvoiceAcquiringConfig {
  const InvoiceAcquiringConfigCredential({
    required this.login,
    required this.apiKey,
    bool isDebugMode = true,
    BaseLogger logger = const Logger(),
  }) : super._(isDebugMode: isDebugMode, logger: logger);

  /// Идентификатор терминала.
  /// Выдается продавцу банком при заведении терминала
  final String login;

  /// Пароль терминала из личного кабинета
  ///
  /// Выдается продавцу банком при заведении терминала
  final String? apiKey;
}

