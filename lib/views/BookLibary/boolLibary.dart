import 'package:flutter/material.dart';
import 'package:zhuishushenqi/views/BookLibary/bookLibaryCate.dart';


class BooKLibary extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BookLibaryState();
  }
}

class BookLibaryState extends State {
  var tabs = [
    Text('精选'),
    Text('男生'),
    Text('女生'),
    Text('出版'),
  ];
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: this.tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: getSearchBar(),
          actions: <Widget>[
            getNavigationCateButton(),
          ],
          bottom: getTopTabBar(),
        ),
        body: getTabBarViews(),
      ),
    );
  }

  Widget getNavigationCateButton() {
    return Center(
      child: GestureDetector(
        onTap: () {
          print('taped cate button');
        },
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 8, 8, 0),
          child: Column(
            children: <Widget>[
              Image.asset(
                'images/icon_classification.png',
                width: 20,
                height: 20,
              ),
              Text('分类'),
            ],
          ),
        ),
      ),
    );
  }

  Widget getSearchBar() {
    return GestureDetector(
      onTap: () {
        print('taped search bar button');
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.grey.withAlpha(50),
              ),
            ),
            Center(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    'images/icon_home_search.png',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '搜索本地及网络书籍',
                    style: TextStyle(
                      color: Colors.grey.withAlpha(80),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTopTabBar() {
    var selectedColor = Colors.green.withAlpha(125);
    var unselectedColor = Colors.grey.withAlpha(125);

    return TabBar(
      isScrollable: false,
      indicatorColor: selectedColor,
      labelColor: selectedColor,
      unselectedLabelColor: unselectedColor,
      labelPadding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      tabs: this.tabs,
    );
  }

  Widget getTabBarViews() {
    return TabBarView(
      children: <Widget>[
        BookLibaryCate(),
        BookLibaryCate(),
        BookLibaryCate(),
        BookLibaryCate(),
      ],
    );
  }
}
