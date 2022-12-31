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
    return ListView(children: [
      Container(width: double.infinity, height: 200, color: Colors.black),
      Row(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                height: 180,
                child: Image.network(
                    'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=1600',
                    fit: BoxFit.cover),
              )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(10),
            height: 180,
            child: Column(children: [
              Expanded(
                child: Image.network(
                    'https://images.pexels.com/photos/2444403/pexels-photo-2444403.jpeg?auto=compress&cs=tinysrgb&w=1600',
                    fit: BoxFit.cover),
              ),
              const SizedBox(height: 10),
              Expanded(
                flex: 1,
                child: Image.network(
                    'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=1600',
                    fit: BoxFit.cover),
              )
            ]),
          ))
        ],
      )
    ]);
  }
}

class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon, {super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      width: 150,
      color: color,
      child: Icon(icon, color: Colors.white, size: 50),
    );
  }
}
