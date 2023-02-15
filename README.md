<h1 align="center">Invoice su Acquiring SDK</h1>

Acquiring SDK allows you to integrate [Invoice su Acquiring][acquiring] into applications for iOS, Android, Web, Windows, Linux, MacOS platforms.

[Available API Documentation][documentation].

## SDK Features

- Making payments (including recurring payments);
- Creating terminals (including recurring payments);
- Integration with online checkouts;
- Payment through the Fast Payment System (SBP) by QR;

## Installing
Add this to your package's pubspec.yaml file:
```yaml
dependencies:
  invoice_su: ^1.0.1
```

## Before usage

To get started with the SDK, you'll need:
* **login** - seller's account login; 
* **apiKey** - account api key to work with;
* **terminalId** – to start make payments it needs to select one.

These values are issued in your personal account after connecting to [Invoice su Acquiring][acquiring].

### Credential

To configure the operation mode, set the following parameters:
```dart
 final InvoiceAcquiring acquiringInstance = InvoiceAcquiring(
    InvoiceAcquiringConfig.credential(login: demoLogin, apiKey: apiDemoKey));
```

## Example

The [Example][example] is in the corresponding folder


[documentation]: https://dev.invoice.su/#tag/Kassovoe-API
[acquiring]: https://invoice.su/business
[example]: https://github.com/HorumDev/invoice_su/tree/master/example
[readme_ru]: https://github.com/HorumDev/invoice_su/blob/master/README.ru.md