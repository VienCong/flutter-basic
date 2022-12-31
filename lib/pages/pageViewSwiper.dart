import 'package:flutter/material.dart';
import '../res/listData.dart';

class PageViewSwiperPage extends StatefulWidget {
  const PageViewSwiperPage({super.key});

  @override
  State<PageViewSwiperPage> createState() => _PageViewSwiperPageState();
}

class _PageViewSwiperPageState extends State<PageViewSwiperPage> {
  List<Widget> list = [];
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    for (var element in listData) {
      list.add(SizedBox(
        width: double.infinity,
        height: 200,
        child: Image.network(element['imgUrl'], fit: BoxFit.cover),
      ));
    }
    // for (int i = 0; i < 3; i++) {
    //   list.add(Center(
    //       child: Text(
    //     '第${i + 1}',
    //     style: const TextStyle(fontSize: 60),
    //   )));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("PageViewSwiperPage")),
        body: Stack(
          children: [
            SizedBox(
              height: 200,
              child: PageView(
                // scrollDirection: Axis.vertical,
                children: list,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index % list.length;
                  });
                },
              ),
            ),
            Positioned(
                left: 0,
                right: 0, //设置 left:0 right:0就会站满整行
                bottom: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(list.length, (index) {
                    return Container(
                      margin: const EdgeInsets.all(5),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: _currentIndex == index
                              ? Colors.blue
                              : Colors.grey,
                          shape: BoxShape.circle //圆
                          // borderRadius: BorderRadius.circular(5) //圆
                          ),
                    );
                  }).toList(),
                ))
          ],
        ));
  }
}
