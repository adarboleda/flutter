import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text('Texto Basico'),
        Text('Texto Basico', style: TextStyle(fontSize: 24)),
        Text(
          'Texto Basico',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text('Texto Basico', style: TextStyle(fontStyle: FontStyle.italic)),
        Text(
          'Texto Basico',
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 30,
            backgroundColor: Colors.amberAccent,
          ),
        ),
        Text(
          'Decorator',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            fontSize: 30,
            color: Colors.black,
            decorationColor: Colors.red,
          ),
        ),
        Text(
          'Espaciado entre letras',
          style: TextStyle(letterSpacing: 5, fontSize: 20),
        ),
        Text(
          'Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo Texto largo',
          style: TextStyle(fontSize: 30),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
}
