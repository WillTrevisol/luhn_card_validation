import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/material.dart';
import 'package:luhn_card_validation/card_validation_result.dart';
import 'package:luhn_card_validation/card_validator.dart';

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
  CardValidationResult? card;

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
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: TextFormField(
                controller: textController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  TextInputMask(mask: '9999 9999 9999 9999'),
                ],
                onChanged: (value) {
                  if (value.replaceAll(' ', '').length == 16) {
                    final CardValidationResult cardResult = CardValidator.validate(value);
                    setState(() => card = cardResult);
                  } else {
                    setState(() => card = null);
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            if (card != null) ...{
              Text('Brand: ${card?.brand.name}'),
              const SizedBox(height: 10),
              Text('Luhn Algorithm Valid: ${card?.valid}')
            }
          ],
        ),
      ),
    );
  }
}
