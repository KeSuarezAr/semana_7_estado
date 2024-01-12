import 'package:flutter/material.dart';
import 'package:semana_7_estados/page_one.dart';
import 'package:semana_7_estados/page_two.dart';
import 'package:semana_7_estados/widgets/navigate_buttons.dart';

void main() {
  runApp(const MyApp());
}

void navigateToScreenOne(
    BuildContext context, int counter, dynamic Function(int) callback) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => PageOne(
        counter: counter,
        callback: callback,
      ),
    ),
  );
}

void navigateToScreenTwo(
    BuildContext context, int counter, dynamic Function(int) callback) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => PageTwo(
        counter: counter,
        callback: callback,
      ),
    ),
  );
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Página de inicio'),
        ),
        body: const MyHomePage(title: 'Página de inicio'),
      ),
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
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return NavigateButtons(
      onNavigateToPageOne: () => navigateToScreenOne(context, counter,
          (int counter) => setState(() => this.counter = counter)),
      onNavigateToPageTwo: () => navigateToScreenTwo(context, counter,
          (int counter) => setState(() => this.counter = counter)),
    );
  }
}
