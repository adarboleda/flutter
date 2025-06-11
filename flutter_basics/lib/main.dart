import 'package:flutter/material.dart';
import 'package:flutter_basics/components/button.dart';
import 'package:flutter_basics/components/text.dart';
import 'package:flutter_basics/components/textfield.dart';
import 'package:flutter_basics/layouts/column.dart';
import 'package:flutter_basics/layouts/row.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: ButtonExample()));
  }
}
