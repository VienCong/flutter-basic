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
            body: const MyHomePage(),
            bottomNavigationBar: const _Tab()));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 200, width: 200, child: Text('1111'));
  }
}

class _Tab extends StatefulWidget {
  const _Tab({super.key});

  @override
  State<_Tab> createState() => _TabState();
}

class _TabState extends State<_Tab> {
  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _activeIndex,
      onTap: (index) {
        setState(() {
          _activeIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '111111'),
        BottomNavigationBarItem(icon: Icon(Icons.payment), label: '22222'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: '3333')
      ],
    );
  }
}
