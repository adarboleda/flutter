import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 5, 163, 187),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hola, soy Abner'),
          Text('Hola, soy Abner'),
          Text('Hola, soy Abner'),
          Text('Hola, soy Abner'),
          Text('Hola, soy Abner'),
          Text('Hola, soy Abner'),
          Text('Hola, soy Abner'),
          Text('Hola, soy Abner'),
          Text('Hola, soy Abner'),
        ],
      ),
    );
  }
}
