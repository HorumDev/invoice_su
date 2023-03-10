/// Является базовым модулем для работы с Invoice Acquiring API.
/// Модуль реализует протокол взаимодействия с сервером и позволяет не осуществлять прямых обращений в API.
///
/// Основной класс модуля: `InvoiceAcquiring` - предоставляет интерфейс для взаимодействия с Invoice Acquiring API.
/// Для работы необходимы ключи и пароль продавца.
library invoice_acquiring;

export 'src/core/models/models.dart'
    hide
        ObjectRequestValidate,
        NumEx,
        MapEx,
        JsonKeys,
        NetworkSettings,
        ApiMethods,
        Ignore,
        CardSettings;
export 'src/core/invoice_su_base.dart';
export 'src/core/invoice_acquiring_config.dart';
