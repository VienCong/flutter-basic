import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('你好Flutter')),
          body: Column(children: const [MyApp(), MyButton()]))));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 100,
        // color: Colors.red,
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.green, width: 20),
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 10.0)],
            gradient:
                const LinearGradient(colors: [Colors.red, Colors.yellow])),
        child: const Text('xxxx', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      transform: Matrix4.translationValues(50, 30, 2),
      width: 100,
      height: 50,
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      // margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child:
          const Text('按钮', style: TextStyle(color: Colors.black, fontSize: 30)),
    );
  }
}
