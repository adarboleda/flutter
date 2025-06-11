import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://miro.medium.com/v2/resize:fit:900/1*ADxa8DAu2pT66Nv3roRsvA.gif',
        ),
        Image.asset("assets/images/dash.jpg", height: 100),
      ],
    );
  }
}
