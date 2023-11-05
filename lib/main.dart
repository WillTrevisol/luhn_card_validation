import 'package:flutter/material.dart';
import 'package:luhn_card_validation/brand.dart';
import 'package:luhn_card_validation/card_brand_checker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Luhn Flutter Demo'),
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

  final TextEditingController textController = TextEditingController();
  String brand = '';

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: textController,
              maxLength: 16,
              onChanged: (value) {
                if (value.length >= 13) {
                  final Brand cardBrand = CardBrandChecker.brand(value);
                  setState(() => brand = cardBrand.name);
                } else {
                  setState(() => brand = '');
                }
              },
            ),
            const SizedBox(height: 10),
            Text(brand),
          ],
        ),
      ),
    );
  }
}
