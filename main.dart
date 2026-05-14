import 'package:flutter/material.dart';
import 'Quadratics.dart';
import 'FiveFunction.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _currentPage = const QuadraticPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Calculators'),
            ),
            ListTile(
              title: const Text('Quadratic Calculator'),
              onTap: () {
                setState(() {
                  _currentPage = const QuadraticPage();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Basic Calculator'),
              onTap: () {
                setState(() {
                  _currentPage = const FiveFunctionPage();
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _currentPage,
    );
  }
}