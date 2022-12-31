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
  void _onPressed() {
    print('1');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _onPressed,
            child: const Text("按钮"),
          ),
          TextButton(
            onPressed: _onPressed,
            child: const Text("按钮"),
          ),
          OutlinedButton(
            onPressed: _onPressed,
            child: const Text("按钮"),
          ),
          IconButton(onPressed: _onPressed, icon: const Icon(Icons.home))
        ],
      ),
      const SizedBox(height: 20),
      Row(
        children: [
          ElevatedButton.icon(
            onPressed: _onPressed,
            icon: const Icon(Icons.payment),
            label: const Text("按钮"),
          ),
          TextButton.icon(
            onPressed: _onPressed,
            icon: const Icon(Icons.payment),
            label: const Text("按钮"),
          ),
          OutlinedButton.icon(
            onPressed: _onPressed,
            icon: const Icon(Icons.payment),
            label: const Text("按钮"),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Row(children: [
        ElevatedButton.icon(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              foregroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: _onPressed,
          icon: const Icon(Icons.payment),
          label: const Text("按钮"),
        ),
      ]),
      const SizedBox(height: 20),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SizedBox(
          height: 100,
          width: 200,
          child: ElevatedButton.icon(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: _onPressed,
            icon: const Icon(Icons.payment),
            label: const Text("按钮"),
          ),
        )
      ]),
      const SizedBox(height: 20),
      Row(children: [
        Expanded(
          flex: 1, // 铺满
          child: ElevatedButton.icon(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: _onPressed,
            icon: const Icon(Icons.payment),
            label: const Text("按钮"),
          ),
        ),
      ]),
      const SizedBox(height: 20),
      Row(children: [
        Expanded(
            flex: 1, // 铺满
            child: Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: _onPressed,
                icon: const Icon(Icons.payment),
                label: const Text("登录"),
              ),
            )),
      ]),
      const SizedBox(height: 20),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        ElevatedButton.icon(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
              backgroundColor: MaterialStateProperty.all(Colors.red),
              foregroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: _onPressed,
          icon: const Icon(Icons.payment),
          label: const Text("按钮"),
        ),
        SizedBox(
          width: 80,
          height: 80,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                    const CircleBorder(side: BorderSide(color: Colors.red))),
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: _onPressed,
            child: const Text("按钮11111"),
          ),
        ),
      ]),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            style: ButtonStyle(
                side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.red))),
            onPressed: _onPressed,
            child: const Text("按钮"),
          ),
        ],
      ),
    ]);
  }
}
