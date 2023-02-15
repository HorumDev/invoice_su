import 'package:flutter/material.dart';
import 'package:invoice_su/invoice_su.dart';

void main() {
  runApp(const MyApp());
}

const String demoLogin = 'demo';
const String apiDemoKey = '1526fec01b5d11f4df4f2160627ce351';
const String apiDemoMerchantId = 'c24360cfac0a0c40c518405f6bc68cb0';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Invoice Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final InvoiceAcquiring acquiringInstance = InvoiceAcquiring(
      InvoiceAcquiringConfig.credential(login: demoLogin, apiKey: apiDemoKey));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => acquiringInstance
                  .getTerminal(TerminalInfoRequest(id: 'testID')),
              child: const Text(
                'get terminal info',
              ),
            ),
            TextButton(
              onPressed: () => acquiringInstance.createPayment(
                  CreatePaymentRequest(
                      order: InvoiceOrder(amount: 100),
                      settings: PaymentSettings(terminalId: 'testID'))),
              child: const Text(
                'create payment ',
              ),
            )
          ],
        ),
      ),
    );
  }
}
