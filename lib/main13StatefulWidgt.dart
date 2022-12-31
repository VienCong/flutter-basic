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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter")),
        body: MyHomePage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text('11111'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;

  void _onPress() {
    print('$_count');
    _count = _count + 2;
    setState(() {}); // 更新组件
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$_count'),
        ElevatedButton(onPressed: _onPress, child: const Text('增加')),
      ],
    );
  }
}
