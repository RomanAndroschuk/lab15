import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  @override
  CalculatorAppState createState() => CalculatorAppState();
}

class CalculatorAppState extends State<CalculatorApp> {
  int counter = 0;


  double calculateFunction(double x) {
    if (x == 0) {
      throw ArgumentError("x cannot be 0");
    }
    return x - 1 / (x * x) + 1 / (3 * x);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KN-32 Roman's last Flutter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Counter: $counter",
          style: const TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: const Icon(Icons.person),
      ),
    );
  }
}
