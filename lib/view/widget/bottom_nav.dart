import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:task_app/view/pages/home_page.dart';

import '../../constants/constants.dart';
import '../pages/explore_page.dart';
import '../pages/inbox_page.dart';
import '../pages/shop_page.dart';

// ignore: must_be_immutable
class BottomNav extends StatelessWidget {
  BottomNav({Key? key}) : super(key: key);

  List navigation = [
    HomePage(),
    ExplorePage(),
    InboxPage(),
    ShopPage(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    void _onTap(int index) {
      _selectedIndex = index;
      (context as Element).markNeedsBuild();
    }

    return Scaffold(
      body: navigation[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(IconlyBold.discovery), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.message), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(IconlyLight.bag_2), label: 'Shop'),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        mini: true,
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
