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
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading:
              Image.network("https://profile-avatar.csdnimg.cn/default.jpg!2"),
          title: const Text("新闻标题"),
          subtitle: const Text(
              '新闻副标题新闻副标题新闻副标题新闻副标题新闻副标题新闻副标题新闻副标题新闻副标题新闻副标题新闻副标题新闻副标题r'),
          trailing: Image.network(
              "https://img.alicdn.com/imgextra/i1/O1CN01EI93PS1xWbnJ87dXX_!!6000000006451-2-tps-150-150.png"),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 200,
          color: Colors.green,
          child:
              Image.network("https://profile-avatar.csdnimg.cn/default.jpg!2"),
        ),
        Container(
          height: 200,
          color: Colors.blue,
          child: Image.network(
              "https://img.alicdn.com/imgextra/i1/O1CN01EI93PS1xWbnJ87dXX_!!6000000006451-2-tps-150-150.png"),
        ),
        Image.network(
            "https://img.alicdn.com/imgextra/i1/O1CN01EI93PS1xWbnJ87dXX_!!6000000006451-2-tps-150-150.png"),
      ],
    );
  }
}
