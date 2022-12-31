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
        body: const LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);
  void _onPress() {
    print('111111');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [
            Text(
              '热搜',
              // style: TextStyle(color: Colors.red, fontSize: 28),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const Divider(),
        Wrap(
            spacing: 5, // 水平间距
            runSpacing: 10, // 垂直间距
            // direction: Axis.vertical,
            // alignment: WrapAlignment.end,R
            children: [
              Button(
                '按钮111',
                onPressed: _onPress,
              ),
              Button(
                '按钮1',
                onPressed: _onPress,
              ),
              Button(
                '按钮2',
                onPressed: _onPress,
              ),
            ]),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              '历史记录',
              // style: TextStyle(color: Colors.red, fontSize: 28),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const Divider(),
        Column(
          children: const [
            ListTile(title: Text('111')),
            ListTile(title: Text('1112'))
          ],
        )
      ],
    );
  }
}

class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;
  Button(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(241, 228, 180, 180)),
          foregroundColor: MaterialStateProperty.all(Colors.black45)),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
