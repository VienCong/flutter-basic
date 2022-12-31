import 'package:flutter/material.dart';
import 'tabs/home.dart';
import 'tabs/category.dart';
import 'tabs/settings.dart';
import 'tabs/cart.dart';
import 'tabs/user.dart';

class Tabs extends StatefulWidget {
  final int activeIndex;
  const Tabs({super.key, this.activeIndex = 0});

  @override
  State<Tabs> createState() => _TabState();
}

class _TabState extends State<Tabs> {
  late int _activeIndex;
  final List<Widget> _pages = const [
    HompPage(),
    CategoryPage(),
    SettingsPage(),
    CartPage(),
    UserPage()
  ];
  @override
  void initState() {
    super.initState();
    _activeIndex = widget.activeIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter")),
      body: _pages[_activeIndex],
      drawer: Drawer(
          child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: DrawerHeader(
                    // UserAccountsDrawerHeader同样可以实现
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/2444403/pexels-photo-2444403.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: const [
                        ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://csdnimg.cn/medal/chizhiyiheng@240.png'),
                              // child: Image.network(
                              //     'https://img.alicdn.com/imgextra/i1/O1CN01EI93PS1xWbnJ87dXX_!!6000000006451-2-tps-150-150.png'),
                            ),
                            title: Text(
                              '张三的主页',
                              style: TextStyle(color: Colors.red),
                            )),
                      ],
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('个人中心')),
          const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置'))
        ],
      )),
      endDrawer: Text('11'),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.amber,
        currentIndex: _activeIndex,
        type: BottomNavigationBarType.fixed, // 大于等于4个需要配置
        onTap: (index) {
          setState(() {
            _activeIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'settings'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.admin_panel_settings), label: 'user')
        ],
      ),
      // 类闲鱼中间+按钮
      floatingActionButton: Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
            backgroundColor: _activeIndex == 1 ? Colors.green : Colors.amber,
            onPressed: () {
              setState(() {
                _activeIndex = 0;
              });
            },
            child: const Icon(Icons.add)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
