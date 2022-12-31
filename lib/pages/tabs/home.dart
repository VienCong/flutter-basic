import 'package:flutter/material.dart';
import '../../tools/keepAliveWrapper.dart';
import 'dart:math';
import '../search.dart';
import '../form.dart';
import '../news.dart';

class HompPage extends StatefulWidget {
  const HompPage({super.key});

  @override
  State<HompPage> createState() => _HompPageState();
}

class _HompPageState extends State<HompPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // 生命周期函数、函数初始化时执行
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
    // 监听_tabController事件
    _tabController.addListener(() {
      if (_tabController.animation?.value == _tabController.index) {
        print('1111:${_tabController.index}');
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose(); // 销毁
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 1,
              title: SizedBox(
                // height: 30,
                child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.red,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        child: Text('关注'),
                      ),
                      Tab(
                        child: Text('热门'),
                      ),
                      Tab(
                        child: Text('视频'),
                      ),
                      Tab(
                        child: Text('关注1'),
                      ),
                      Tab(
                        child: Text('热门1'),
                      ),
                      Tab(
                        child: Text('视频1'),
                      ),
                      Tab(
                        child: Text('关注2'),
                      ),
                      Tab(
                        child: Text('热门2'),
                      ),
                      Tab(
                        child: Text('视频2'),
                      ),
                    ]),
              )),
        ),
        body: TabBarView(controller: _tabController, children: [
          KeepAliveWrapper(
            child: ListView(children: [
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const SearchPage();
                    }));
                  },
                  child: const Text('基本路由去到Search Page')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const FormPage();
                    }));
                  },
                  child: const Text('基本路由去到Form Page')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const NewsPage(
                        title: "基本路由北京新闻",
                      );
                    }));
                  },
                  child: const Text('去到News Page')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.pushNamed(context, '/search');
                  },
                  child: const Text('命名路由去到Search Page')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.pushNamed(context, '/form');
                  },
                  child: const Text('命名路由去到Form Page')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.pushNamed(context, '/newsCopy',
                        arguments: {'title': '新闻标题啦啦啦'});
                  },
                  child: const Text('命名路由去到News Page')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.pushNamed(context, '/pageView');
                  },
                  child: const Text('命名路由去到pageView')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.pushNamed(context, '/pageViewBuilder');
                  },
                  child: const Text('命名路由去到pageViewBuilder')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.pushNamed(context, '/pageViewFull');
                  },
                  child: const Text('命名路由去到pageViewFullPage无限加载 ')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.pushNamed(context, '/pageViewSwiper');
                  },
                  child: const Text('命名路由去到pageViewSwiper')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.pushNamed(context, '/pageViewSwiperAuto');
                  },
                  child: const Text('命名路由去到pageViewSwiperAuto')),
              ElevatedButton(
                  onPressed: () {
                    // 路由跳转
                    Navigator.pushNamed(context, '/pageViewKeepAlive');
                  },
                  child: const Text('命名路由去到pageViewSwiperKeepAlive')),
              ...List.filled(20, 1).map((value) {
                return ListTile(
                    title: Text("我是关注页list${Random().nextInt(10)}"));
              }).toList()
            ]),
          ),
          ListView(children: const [ListTile(title: Text("我是热门页list"))]),
          ListView(children: const [ListTile(title: Text("我是视频页list"))]),
          ListView(children: const [ListTile(title: Text("我是关注页1list"))]),
          ListView(children: const [ListTile(title: Text("我是热门页1list"))]),
          ListView(children: const [ListTile(title: Text("我是视频页1list"))]),
          ListView(children: const [ListTile(title: Text("我是关注页2list"))]),
          ListView(children: const [ListTile(title: Text("我是热门页2list"))]),
          ListView(children: const [ListTile(title: Text("我是视频页2list"))]),
        ]));
  }
}
