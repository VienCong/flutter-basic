import 'package:flutter/material.dart';

class PageViewFullPage extends StatefulWidget {
  const PageViewFullPage({super.key});

  @override
  State<PageViewFullPage> createState() => _PageViewFullPageState();
}

class _PageViewFullPageState extends State<PageViewFullPage> {
  List<Widget> list = [];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 3; i++) {
      list.add(Center(
          child: Text(
        '第${i + 1}',
        style: const TextStyle(fontSize: 60),
      )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("PageViewFullPage")),
        body: PageView(
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            if (value == list.length - 2) {
              setState(() {
                for (int i = 0; i < 3; i++) {
                  list.add(Center(
                      child: Text(
                    '第${i + 1}',
                    style: const TextStyle(fontSize: 60),
                  )));
                }
              });
            }
          },
          children: list,
        ));
  }
}
