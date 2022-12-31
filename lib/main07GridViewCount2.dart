import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  List<Widget> _initGridViewData() {
    List<Widget> templist = [];
    for (int i = 0; i < 10; i++) {
      templist.add(Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.blue),
        child: Text('第一个元素$i', style: const TextStyle(fontSize: 20)),
      ));
    }
    return templist;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      childAspectRatio: 0.7, // 宽高比
      children: _initGridViewData(),
    );
  }
}
