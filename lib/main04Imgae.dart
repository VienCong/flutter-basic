import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('标题1')),
          body: Column(
            children: const [
              MyApp(),
              SizedBox(
                height: 20,
              ),
              Circular(),
              SizedBox(
                height: 20,
              ),
              ClipOvalImage(),
              SizedBox(
                height: 20,
              ),
              LocalImage()
            ],
          ))));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 150,
      width: 150,
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Image.network('https://profile-avatar.csdnimg.cn/default.jpg!2',
          fit: BoxFit.cover),
    ));
  }
}

// Container实现圆形图片
class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(75.0),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://profile-avatar.csdnimg.cn/default.jpg!2'),
              fit: BoxFit.cover)),
    );
  }
}

// ClipOval实现圆形图片
class ClipOvalImage extends StatelessWidget {
  const ClipOvalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network('https://profile-avatar.csdnimg.cn/default.jpg!2',
          height: 150, width: 150, fit: BoxFit.cover),
    );
  }
}

// 加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150, width: 150, child: Image.asset('images/icon.jpg'));
  }
}
