import 'package:flutter/cupertino.dart';
import '../pages/tabs.dart';
import '../pages/search.dart';
import '../pages/newsCopy.dart';
import '../pages/form.dart';
import '../pages/user/login.dart';
import '../pages/user/registerFirst.dart';
import '../pages/user/registerSecond.dart';
import '../pages/user/registerThird.dart';

Map routes = {
  '/': (context) => const Tabs(),
  '/search': (context) => const SearchPage(),
  '/newsCopy': (context, {arguments}) => NewsCopyPage(arguments: arguments),
  '/form': (context) => const FormPage(),
  "/login": (contxt) => const LoginPage(),
  "/registerFirst": (contxt) => const RegisterFirstPage(),
  "/registerSecond": (contxt) => const RegisterSecondPage(),
  "/registerThird": (contxt) => const RegisterThirdPage(),
};

// 相当于路由中间件
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name; //  /news 或者 /search
  final Function? pageContentBuilder =
      routes[name]; //  Function = (contxt) { return const NewsPage()}

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          CupertinoPageRoute(builder: (context) => pageContentBuilder(context));

      return route;
    }
  }
  return null;
};
