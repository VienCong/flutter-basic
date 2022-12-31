import 'package:flutter/material.dart';
import './res/listData.dart';

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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      color: Colors.amber,
      child: Row(
        // 继承自Flex
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconContainer(Icons.home, color: Colors.red),
          IconContainer(Icons.payment, color: Colors.yellow),
          IconContainer(Icons.card_travel, color: Colors.blue)
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon, {super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      width: 100,
      color: color,
      child: Icon(icon, color: Colors.white, size: 50),
    );
  }
}
