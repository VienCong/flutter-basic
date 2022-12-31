import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  final String title;
  const NewsPage({super.key, required this.title});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)), // 实现通过widget获取值
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.home),
      ),
      body: const Center(
        child: Text('NewsPage '),
      ),
    );
  }
}
