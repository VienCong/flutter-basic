import 'package:flutter/material.dart';
import './ityingIcon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter ICON")),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 20),
        Icon(
          Icons.home,
          size: 40,
          color: Colors.blue,
        ),
        SizedBox(height: 20),
        Icon(
          Icons.settings,
          size: 40,
          color: Colors.blue,
        ),
        Icon(
          ItyingIcon.book,
          size: 40,
          color: Colors.red,
        ),
        Icon(
          ItyingIcon.weixin,
          size: 40,
          color: Colors.green,
        ),
        Icon(
          ItyingIcon.cart,
          size: 40,
          color: Colors.black,
        )
      ],
    );
  }
}
