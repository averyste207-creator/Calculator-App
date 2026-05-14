import 'package:flutter/material.dart';

import 'math.dart';

class QuadraticPage extends StatefulWidget {
  const QuadraticPage({super.key});

  @override
  State<QuadraticPage> createState() => _QuadraticPageState();
}

class _QuadraticPageState extends State<QuadraticPage> {
  final TextEditingController controllerA = TextEditingController();
  final TextEditingController controllerB = TextEditingController();
  final TextEditingController controllerC = TextEditingController();

  double textA = 0;
  double textB = 0;
  double textC = 0;
  List<double>? result;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              'Quadratic Calculator\n',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            Text(
              'Welcome to the Quadratic Calculator! This app will solve any quadratic equation you input.\n A quadratic equation is an equation of the form ax^2 + bx + c = 0, where a, b, and c are constants.\n To use this app, simply enter the values of a, b, and c in the text fields below and press the calculate button.\n\n', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            
            TextField(
              controller: controllerA,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your A value here:',
              ),
            ),

            Text(""),

            TextField(
              controller: controllerB,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your B value here:',
              ),
            ),

            Text(""),

            TextField(
              controller: controllerC,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your C value here:',
              ),
            ),

            Text(""),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  textA = double.parse(controllerA.text);
                  textB = double.parse(controllerB.text);
                  textC = double.parse(controllerC.text);
                  result = Math().quadraticFormula(textA, textB, textC);
                });
              },
              child: const Text('Calculate'),
            ),

            const SizedBox(height: 20),

            Text(result != null ? 'Your solution set is: $result' : 'Enter values and press Calculate'),
          ],
        ),
      ),
    );
  }
}