import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {
            print("Pulsado!");
          },
          child: Text('Soy un boton :)'),
          onLongPress: () {
            print("Pulsadoooooooooo!");
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.red),
          ),
        ),
        OutlinedButton(onPressed: null, child: Text("outline")),
        TextButton(onPressed: null, child: Text('Text Button')),
        FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        IconButton(onPressed: null, icon: Icon(Icons.favorite)),
        Spacer(),
      ],
    );
  }
}
