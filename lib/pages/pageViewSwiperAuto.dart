import 'package:flutter/material.dart';
import '../widget/swiper.dart';
import '../res/listData.dart';

class PageViewSwiperAuto extends StatefulWidget {
  const PageViewSwiperAuto({super.key});

  @override
  State<PageViewSwiperAuto> createState() => _PageViewSwiperAutoState();
}

class _PageViewSwiperAutoState extends State<PageViewSwiperAuto> {
  List<String> list = [];
  @override
  void initState() {
    super.initState();
    listData.forEach(
      (element) {
        list.add(element['imgUrl']);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PageViewSwiperAuto'),
        ),
        body: ListView(
          children: [Swiper(list: list)],
        ));
  }
}
