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
        appBar: AppBar(title: const Text("Flutter")),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 10,
          shape: // 圆角
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(children: const [
            ListTile(
              title: Text(
                '张三',
                style: TextStyle(fontSize: 28),
              ),
              subtitle: Text('高级软件工程师'),
            ),
            Divider(),
            ListTile(title: Text('地址。。。。。')),
            ListTile(title: Text('电话。。。。。。。R')),
          ]),
        )
      ],
    );
  }
}
