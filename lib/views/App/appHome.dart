import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zhuishushenqi/views/BookLibary/boolLibary.dart';
import 'package:zhuishushenqi/views/BookShelf/bookShelf.dart';
import 'package:zhuishushenqi/views/Mine/mine.dart';

class AppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppHomeState();
  }
}

class AppHomeState extends State {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var cupertinoTabBar = CupertinoTabBar(
      items: [
        BottomNavigationBarItem(
          icon: Image.asset("images/icon_tab_bookshelf_n.png"),
          activeIcon: Image.asset('images/icon_tab_bookshelf_p.png'),
          title: Text("书架"),
        ),
        BottomNavigationBarItem(
          icon: Image.asset("images/icon_tab_home_n.png"),
          activeIcon: Image.asset('images/icon_tab_home_p.png'),
          title: Text("书库"),
        ),
        BottomNavigationBarItem(
          icon: Image.asset("images/icon_tab_me_n.png"),
          activeIcon: Image.asset('images/icon_tab_me_p.png'),
          title: Text("我的"),
        ),
      ],
      currentIndex: selectedIndex,
      backgroundColor: Colors.white,
      activeColor: Colors.green.withAlpha(125),
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          BooKShelf(),
          BooKLibary(),
          Mine(),
        ],
        index: selectedIndex,
      ),
      bottomNavigationBar: cupertinoTabBar,
    );
  }
}
