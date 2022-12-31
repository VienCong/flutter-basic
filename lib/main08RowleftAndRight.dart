import 'package:flutter/material.dart';

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
      // height: 400,
      // width: 200,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: IconContainer(Icons.home, color: Colors.red),
          ),
          IconContainer(Icons.payment, color: Colors.yellow),
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
      width: 150,
      color: color,
      child: Icon(icon, color: Colors.white, size: 50),
    );
  }
}
