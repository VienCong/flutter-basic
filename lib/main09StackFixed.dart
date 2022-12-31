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
  List<Widget> _initListTile() {
    var list1 = List.filled(100, 1).map((i) {
      return ListTile(title: Text('标题$i'));
    });
    return list1.toList();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // 获取容器宽度
    return Stack(
      // 相对外部容器 类比abosolute布局
      children: [
        ListView(children: _initListTile()),
        Positioned(
          bottom: 60,
          height: 50,
          width: size.width, // 没法使用double.infinity
          child: Container(
              color: Colors.red,
              // width: double.infinity,
              child: const Text('1111')),
        )
      ],
    );
  }
}
