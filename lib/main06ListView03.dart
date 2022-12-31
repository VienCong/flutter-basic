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
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Container(
            width: 120,
            decoration: BoxDecoration(color: Colors.red),
            child: Column(children: [
              Image.network("https://profile-avatar.csdnimg.cn/default.jpg!2",
                  height: 60),
              const Text('￥1000')
            ]),
          ),
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.green),
          ),
          Container(
            width: 120,
            decoration: const BoxDecoration(color: Colors.pink),
          )
        ],
      ),
    );
  }
}
