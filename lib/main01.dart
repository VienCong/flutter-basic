import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('标题')),
          body: const Center(
              child: Text(
            'data',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.red, fontSize: 40),
          )))));
}
