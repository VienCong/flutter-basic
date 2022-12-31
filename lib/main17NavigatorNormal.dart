import 'package:flutter/material.dart';
import './routers/routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Scaffold(
      //   appBar: AppBar(title: const Text("Flutter")),
      //   body: const MyHomePage(),
      // ),
      initialRoute: '/',
      // routes: {
      //   '/': (context) => const Tabs(),
      //   '/search': (context) => const SearchPage(),
      //   '/news': (context) => NewsPage(title: title),
      //   '/form': (context) => const FormPage()
      // },
      //2、配置onGenerateRoute  固定写法
      onGenerateRoute: onGenerateRoute,
    );
  }
}
