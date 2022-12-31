import 'package:flutter/material.dart';

class NewsCopyPage extends StatefulWidget {
  final Map arguments;
  const NewsCopyPage({super.key, required this.arguments});

  @override
  State<NewsCopyPage> createState() => _NewsCopyPageState();
}

class _NewsCopyPageState extends State<NewsCopyPage> {
  @override
  void initState() {
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.arguments['title'])), // 实现通过widget获取值
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          // Navigator.of(context).pop();
        },
        child: const Icon(Icons.home),
      ),
      body: const Center(
        child: Text('NewsCopyPage '),
      ),
    );
  }
}
