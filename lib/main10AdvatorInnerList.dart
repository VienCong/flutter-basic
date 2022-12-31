import 'package:flutter/material.dart';
import './res/listData.dart';

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

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((value) {
        return Card(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  '${value['imgUrl']}',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                // leading: ClipOval(
                //     child: Image.network(
                //   'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=1600',
                //   fit: BoxFit.cover,
                // )),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                  '${value['imgUrl']}',
                )),
                title: Text('${value['name']}aaaaaaaaa'),
                subtitle: Text('${value['name']}ccccc'),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
