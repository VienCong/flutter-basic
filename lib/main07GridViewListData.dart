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
  List<Widget> _initGridViewData() {
    dynamic list1 = listData.map((value) {
      return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
        child: Column(children: [
          Image.network('${value['imgUrl']}'),
          Text('${value['name']}')
        ]),
      );
    });

    return list1.toList();
  }

  @override
  Widget build(BuildContext context) {
    print(listData);
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      childAspectRatio: 0.7, // 宽高比
      children: _initGridViewData(),
    );
    ;
  }
}
