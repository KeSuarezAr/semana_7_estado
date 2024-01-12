import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  final Function(int) callback;

  const PageOne({Key? key, required this.callback, required int counter})
      : super(key: key);

  @override
  PageOneState createState() => PageOneState();
}

class PageOneState extends State<PageOne> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
    widget.callback(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 2'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(counter);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Presiona el botón varias veces'),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineLarge,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Presiona para incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
