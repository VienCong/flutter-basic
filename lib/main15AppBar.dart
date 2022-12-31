import 'package:flutter/material.dart';
import 'pages/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // 隐藏debbuger
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // 需要mixin
  late TabController _tabController;

  // 生命周期函数、函数初始化时执行
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          backgroundColor: Colors.green,
          actions: [
            // 右侧按钮图标
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          ],
          bottom: TabBar(
              // tabs个数和length、TabBarView children一致
              isScrollable: true,
              indicatorColor: Colors.red,
              indicatorWeight: 3,
              indicatorPadding: const EdgeInsets.all(10),
              // indicatorSize: TabBarIndicatorSize.label,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.black,
              labelStyle: const TextStyle(color: Colors.red),
              unselectedLabelStyle: const TextStyle(color: Colors.red),
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
        ),
        body: TabBarView(controller: _tabController, children: [
          ListView(children: const [ListTile(title: Text("我是关注页list"))]),
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
