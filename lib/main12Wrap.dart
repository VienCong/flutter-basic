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
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
            spacing: 5, // 水平间距
            runSpacing: 10, // 垂直间距
            // direction: Axis.vertical,
            alignment: WrapAlignment.end,
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
              Button(
                '按钮3',
                onPressed: _onPress,
              ),
              Button(
                '按钮4',
                onPressed: _onPress,
              ),
              Button(
                '按钮5',
                onPressed: _onPress,
              ),
              Button(
                '按钮6',
                onPressed: _onPress,
              ),
              Button(
                '按钮111',
                onPressed: _onPress,
              ),
              Button(
                '按钮111',
                onPressed: _onPress,
              ),
              Button(
                '按钮111',
                onPressed: _onPress,
              ),
              Button(
                '按钮111',
                onPressed: _onPress,
              ),
              Button(
                '按钮111',
                onPressed: _onPress,
              ),
              Button(
                '按钮112221',
                onPressed: _onPress,
              ),
              Button(
                '按钮12211',
                onPressed: _onPress,
              ),
              Button(
                '按钮112221',
                onPressed: _onPress,
              ),
              Button(
                '按钮12211',
                onPressed: _onPress,
              ),
              Button(
                '按钮112221',
                onPressed: _onPress,
              ),
              Button(
                '按钮12211',
                onPressed: _onPress,
              ),
            ]));
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
