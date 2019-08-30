import 'package:flutter/material.dart';
import 'package:zhuishushenqi/views/BookShelf/bookShelfSearchBar.dart';

class BooKShelf extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BookShelfState();
  }
}

class BookShelfState extends State {
  @override
  Widget build(BuildContext context) {
    var itemCount = 6;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.fromLTRB(8, 20, 8, 8),
          child: Text(
            '书架',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
        actions: <Widget>[
          getSearchButton(),
          getMoreButton(),
        ],
        bottom: getSearchBar(),
      ),
      body: GridView.builder(
        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          if (index == itemCount - 1) {
            return getEmptyItemCell();
          }
          return getItemCell();
        },
      ),
    );
  }

  Widget getSearchButton() {
    return IconButton(
      icon: Image.asset(
        'images/icon_bookshelf_search.png',
        width: 20,
        height: 20,
      ),
      onPressed: () {
        print('taped search button');
      },
    );
  }

  Widget getMoreButton() {
    return IconButton(
      icon: Image.asset(
        'images/icon_bookshelf_more.png',
        width: 20,
        height: 20,
      ),
      onPressed: () {
        print('taped more button');
      },
    );
  }

  PreferredSizeWidget getSearchBar() {
    return BookShelfSearchBar();
  }

  Widget getEmptyItemCell() {
    return Column(
      children: <Widget>[
        Container(
          width: 92,
          height: 121,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(2),
          //   border: Border.all(
          //     width: 1.0,
          //     color: Colors.grey.withAlpha(80),
          //   ),
          // ),
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Image.asset('images/icon_bookshelf_empty_add.png'),
            onPressed: () {
              print('taped add button');
            },
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text('添加书籍'),
      ],
    );
  }
  Widget getItemCell() {
    return Column(
      children: <Widget>[
        Container(
          width: 92,
          height: 121,
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Image.asset('images/icon_swiper_3.png', fit: BoxFit.scaleDown,),
            onPressed: () {
              print('taped book shelf item cell');
            },
          ),
        ),
        SizedBox(height: 8,),
        Text('仙墓'),
        SizedBox(height: 8,),
        Text('未读',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.withAlpha(80),
          ),
        )
      ],
    );
  }
}
