import 'package:flutter/material.dart';

class BookShelfSearchBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  State<StatefulWidget> createState() {
    return BookShelfSearchBarState();
  }

  @override
  Size get preferredSize {
    return Size.fromHeight(46);
  }
}

class BookShelfSearchBarState extends State {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.green.withAlpha(40),
              ),
              child: Text('【Panda看书】全网小说不限时免费观看'),
            ),
          ),
        ],
      ),
    );
  }
}
