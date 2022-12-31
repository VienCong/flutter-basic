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
    return ListView(
      children: const <Widget>[
        ListTile(
          title: Text('我是一个标题'),
          leading: Icon(Icons.home),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(),
        ListTile(
          title: Text('全部订单'),
          leading: Icon(Icons.assignment),
        ),
        Divider(),
        ListTile(
          title: Text('代付款'),
          leading: Icon(Icons.payment),
        ),
        Divider(),
        ListTile(
          title: Text('收藏'),
          leading: Icon(
            Icons.favorite,
            color: Colors.green,
          ),
        ),
        Divider(),
        ListTile(
          title: Text('用户'),
          leading: Icon(Icons.people),
        ),
        Divider(),
      ],
    );
  }
}
