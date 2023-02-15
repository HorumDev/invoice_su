import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../core/invoice_acquiring_config.dart';
import '../core/models/models.dart';
import 'crypto_utils.dart';

/// {@template network_client}
/// Класс для работы с сетью
/// {@endtemplate}
class NetworkClient {
  /// {@macro network_client}
  NetworkClient(this._config);

  /// {@macro invoicce_acquiring_config}
  final InvoiceAcquiringConfig _config;

  /// Метод вызывает созданный запрос на Acquiring API
  Future<Response> call<Response extends AcquiringResponse>(
    AcquiringRequest request,
    Response Function(Map<String, dynamic> json) response,
  ) async {
    final InvoiceAcquiringConfig config = _config;

    // Map<String, String>? proxyHeaders;
    Uri? url;

    // if (config is InvoiceAcquiringConfigProxy) {
    //   final ProxyRequest? setting = config.mapping?.call(
    //     request,
    //     _config.isDebugMode,
    //   );
    //
    //   proxyHeaders = <String, String>{
    //     ...?config.globalHeaders,
    //     ...?setting?.headers
    //   };
    //
    //   url = config.url(
    //     config.proxyPath + (setting?.methodPath ?? request.apiMethodPath),
    //   );
    // }

    final Map<String, String> headers = <String, String>{
      ...request.headers,
      'Authorization':
          'Basic ${CryptoUtils.base64('${(config as InvoiceAcquiringConfigCredential).login}:${(config).apiKey}')}',
      // ...?proxyHeaders,
    };

    url ??= config.url(NetworkSettings.apiPath + request.apiMethodPath);

    final String rawRequest = jsonEncode(request.toJson());

    config.logger.log(message: url.toString(), name: 'Request URL');
    config.logger.log(message: headers.toString(), name: 'Request headers');
    config.logger.log(message: rawRequest.toString(), name: 'RawRequest');

    http.Response rawResponse;
    try {
      rawResponse = await http
          .post(
            url,
            headers: headers,
            body: rawRequest,
            encoding: Encoding.getByName('UTF-8'),
          )
          .timeout(NetworkSettings.timeout);
    } catch (error, stackTrace) {
      config.logger.log(
        message: '',
        name: 'HTTP Error',
        error: error,
        stackTrace: stackTrace,
      );
      rethrow;
    }

    config.logger.log(
      message: '${rawResponse.statusCode} | ${rawResponse.body}',
      name: 'RawResponse',
    );

    if (rawResponse.statusCode != 200) {
      throw http.ClientException(
        rawResponse.reasonPhrase ?? '',
        rawResponse.request?.url,
      );
    }

    late Response localResponse;
    final dynamic json = jsonDecode(rawResponse.body);

    // if (json is List) {
    //   if (request.apiMethod == ApiMethods.getCardList) {
    //     localResponse = response(<String, dynamic>{JsonKeys.cardInfo: json});
    //   } else {
    //     throw Exception('ApiMethod for list error');
    //   }
    // } else
    if (json is Map) {
      localResponse = response(json as Map<String, dynamic>);
    } else {
      throw Exception('REST type error');
    }

    config.logger.log(message: localResponse.toString(), name: 'Response');
    return localResponse;
  }
}
