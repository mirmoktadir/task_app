import 'package:get/get.dart';
import 'package:task_app/view/pages/explore_page.dart';
import 'package:task_app/view/pages/home_page.dart';
import 'package:task_app/view/pages/inbox_page.dart';

import '../view/pages/shop_page.dart';
import '../view/widget/bottom_nav.dart';

abstract class Routes {
  static final pages = [
    GetPage(name: "/", page: () => BottomNav()),
    GetPage(name: "/Home", page: () => HomePage()),
    GetPage(name: "/Explore", page: () => ExplorePage()),
    GetPage(name: "/Inbox", page: () => InboxPage()),
    GetPage(name: "/Shop", page: () => ShopPage()),
  ];
}
