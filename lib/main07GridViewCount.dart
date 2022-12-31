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

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      children: const [
        Icon(Icons.cabin_rounded),
        Icon(Icons.g_mobiledata_outlined),
        Icon(Icons.dangerous),
        Icon(Icons.cable),
        Icon(Icons.abc),
        Icon(Icons.abc),
        Icon(Icons.access_alarm_rounded),
        Icon(Icons.ac_unit),
      ],
    );
  }
}
