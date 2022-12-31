import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('标题1')), body: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'data',
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.red, fontSize: 40),
    ));
  }
}
