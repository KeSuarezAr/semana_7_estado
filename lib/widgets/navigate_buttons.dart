import 'package:flutter/material.dart';

class NavigateButtons extends StatelessWidget {
  final Function() onNavigateToPageOne;
  final Function() onNavigateToPageTwo;

  const NavigateButtons({
    Key? key,
    required this.onNavigateToPageOne,
    required this.onNavigateToPageTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: onNavigateToPageOne,
          child: const Text('Ir a la pantalla A'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: onNavigateToPageTwo,
          child: const Text('Ir a la pantalla B'),
        ),
      ],
    );
  }
}
