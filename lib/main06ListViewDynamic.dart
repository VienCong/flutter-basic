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
  List<Widget> _initialList() {
    // List<Widget> list1 = [];
    dynamic list1 = listData.map((e) {
      return ListTile(title: Text('${e['name']}'));
    });

    return list1.toList();
  }

  @override
  Widget build(BuildContext context) {
    print(listData);
    return ListView(
      children: _initialList(),
    );
  }
}
