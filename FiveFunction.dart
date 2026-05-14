import 'package:flutter/material.dart';

import 'math.dart';

class FiveFunctionPage extends StatefulWidget {
  const FiveFunctionPage({super.key});

  @override
  State<FiveFunctionPage> createState() => _FiveFunctionPageState();
}

class _FiveFunctionPageState extends State<FiveFunctionPage> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  double num1 = 0;
  double num2 = 0;
  bool isAdding = false;
  bool isSubtracting = false;
  bool isMultiplying = false;
  bool isDividing = false;
  bool isPowering = false;
  bool isRooting = false;
  String finalAnswer = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Basic Calculator\n',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            Text(
              'Welcome to the Basic Calculator! This app will solve any two numbers you input with the five basic functions.\n To use this app, simply enter two numbers in the text fields below and press the calculate button.\n Then press one of the operation buttons below.\n', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),

            TextField(
              controller: controller1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your first number here:',
              ),
            ),

            Row(
              children: [
                TextButton(onPressed: () => setState(() => isAdding = true), child: const Text('+')),
                TextButton(onPressed: () => setState(() => isSubtracting = true), child: const Text('-')),
                TextButton(onPressed: () => setState(() => isMultiplying = true), child: const Text('✕')),
                TextButton(onPressed: () => setState(() => isDividing = true), child: const Text('÷')),
                TextButton(onPressed: () => setState(() => isPowering = true), child: const Text('^')),
                TextButton(onPressed: () => setState(() => isRooting = true), child: const Text('√')),
              ],
            ),

            TextField(
              controller: controller2,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your second number here:',
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                   num1 = double.parse(controller1.text);
                   num2 = double.parse(controller2.text);
                    if (isAdding) {
                      finalAnswer = Math().add(num1, num2).toString();
                      isAdding = false;
                    } else if (isSubtracting) {
                      finalAnswer = Math().subtract(num1, num2).toString();
                      isSubtracting = false;
                    } else if (isMultiplying) {
                      finalAnswer = Math().multiply(num1, num2).toString();
                      isMultiplying = false;
                    } else if (isDividing) {
                      finalAnswer = Math().divide(num1, num2).toString();
                      isDividing = false;
                    }
                    else if (isPowering) {
                      finalAnswer = Math().power(num1, num2).toString();
                      isPowering = false;
                    }
                    else if (isRooting) {
                      finalAnswer = Math().root(num1, num2).toString();
                      isRooting = false;
                    }
                });
              },
              child: const Text('Calculate'),
            ),

            const SizedBox(height: 20),

            Text('Result: $finalAnswer'),
          ],
        ),
      ),
    );
  }
}