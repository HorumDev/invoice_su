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
  /// Создает экземпляр класса для конфигурирования SDK, через `terminalKey` и `password`.
  ///
  /// Если не передать `password`, то SDK будет работать в режиме passwordless.
  /// Внимание, не все методы поддерживают passwordless режим.
  factory InvoiceAcquiringConfig.credential({
    required String login,
    required String apiKey,
    bool isDebugMode,
    BaseLogger logger,
  }) = InvoiceAcquiringConfigCredential;

  /// Создает экземпляр класса для конфигурирования SDK, через `terminalKey` при работе с `signToken`
  // factory InvoiceAcquiringConfig.token({
  //   required String login,
  //   bool isDebugMode,
  //   BaseLogger logger,
  // }) = InvoiceAcquiringConfigToken;
  //
  // /// Создает экземпляр класса для конфигурирования SDK, через `proxy`
  // factory InvoiceAcquiringConfig.proxy({
  //   required String proxyDomain,
  //   String proxyPath,
  //   ProxyMapping? mapping,
  //   Map<String, String>? globalHeaders,
  //   bool isDebugMode,
  //   BaseLogger logger,
  // }) = InvoiceAcquiringConfigProxy;

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

/// Создает экземпляр класса для конфигурирования SDK, через `terminalKey` и `password`.
///
/// Если не передать `password`, то SDK будет работать в режиме passwordless.
/// Внимание, не все методы поддерживают passwordless режим.
class InvoiceAcquiringConfigCredential extends InvoiceAcquiringConfig {
  /// Создает экземпляр класса для конфигурирования SDK, через `terminalKey` и `password`.
  ///
  /// Если не передать `password`, то SDK будет работать в режиме passwordless.
  /// Внимание, не все методы поддерживают passwordless режим.
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

// /// Создает экземпляр класса для конфигурирования SDK, через `terminalKey` при работе с `signToken`
// class InvoiceAcquiringConfigToken extends InvoiceAcquiringConfig {
//   /// Создает экземпляр класса для конфигурирования SDK, через `terminalKey` при работе с `signToken`
//   const InvoiceAcquiringConfigToken({
//     required this.login,
//     bool isDebugMode = true,
//     BaseLogger logger = const Logger(),
//   }) : super._(isDebugMode: isDebugMode, logger: logger);
//
//   /// Идентификатор терминала.
//   /// Выдается продавцу банком при заведении терминала
//   final String login;
// }
//
// /// Создает экземпляр класса для конфигурирования SDK, через `proxy`
// class InvoiceAcquiringConfigProxy extends InvoiceAcquiringConfig {
//   /// Создает экземпляр класса для конфигурирования SDK, через `proxy`
//   const InvoiceAcquiringConfigProxy({
//     required this.proxyDomain,
//     this.proxyPath = '/',
//     this.mapping,
//     this.globalHeaders,
//     bool isDebugMode = true,
//     BaseLogger logger = const Logger(),
//   }) : super._(isDebugMode: isDebugMode, logger: logger);
//
//   @override
//   Uri url(String path) => Uri.https(
//         proxyDomain,
//         path,
//       );
//
//   /// {@template proxy_domain}
//   /// Все запросы будут идти не на `TinkoffAcquiringConfigApi`,
//   /// а на ваш сервер (указанный в `proxyUrl`), который должен иметь [login] и [apiKey],
//   /// который в конечном счете будет формировать запросы на `TinkoffAcquiringConfigApi`.
//   ///
//   /// В формате: `server.com`
//   /// {@endtemplate}
//   final String proxyDomain;
//
//   /// {@template proxy_path}
//   /// Путь до api, по умолчанию `/`
//   /// {@endtemplate}
//   final String proxyPath;
//
//   /// {@macro proxy_mapping}
//   final ProxyMapping? mapping;
//
//   /// {@template global_headers}
//   /// Общий заголовок для всех запросов к proxy api.
//   /// Добавляются к основным заголовкам и предопределяют их.
//   /// Заголовки из [ProxyMapping] добавляються к [globalHeaders] и предопределяют их.
//   /// {@endtemplate}
//   final Map<String, String>? globalHeaders;
// }
