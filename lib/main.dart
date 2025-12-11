import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String inputText = '';
  String result = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Введіть 0 та 1 (напр. 1100)',
                  ),
                  onChanged: (text) {
                    inputText = text;
                  },
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    int decimal = int.tryParse(inputText, radix: 2) ?? 0;

                    result = decimal.toString();
                  });
                },
                child: const Text('Перевести в число'),
              ),

              const SizedBox(height: 20),
              Text(
                result,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
