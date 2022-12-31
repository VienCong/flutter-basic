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
        height: 400,
        width: 300,
        color: Colors.amber,
        child: Stack(
          // 相对外部容器 类比abosolute布局
          children: [
            Positioned(
              bottom: 0,
              child: Container(height: 100, width: 100, color: Colors.red),
            ),
            const Positioned(
              right: 0,
              top: 190,
              bottom: 0,
              child: Text('1111'),
            )
          ],
        ));
  }
}
