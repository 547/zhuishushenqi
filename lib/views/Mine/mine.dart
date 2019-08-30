import 'package:flutter/material.dart';

class Mine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MineState();
  }
}

class MineState extends State {
  @override
  Widget build(BuildContext context) {
    var header = Center(
        child: Container(
      padding: EdgeInsets.fromLTRB(16, 46, 16, 0),
      color: Colors.blue.withAlpha(125),
      height: 260,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(
                'images/icon_me_panda.png',
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 16,
              ),
              Text('书友455555'),
              Spacer(),
              IconButton(
                icon: Image.asset('images/icon_me_setting.png',
                    width: 30, height: 30),
                onPressed: () {
                  print('taped setting button');
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 8,
              ),
              getHeaderItem('熊猫币', '0'),
              Container(
                width: 1,
                height: 20,
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
              ),
              getHeaderItem('礼券', '0'),
              Container(
                width: 1,
                height: 20,
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
              ),
              getHeaderItem('送礼券', '签到'),
              SizedBox(
                width: 8,
              ),
            ],
          ),
          Spacer(),
          getHeaderVipView(),
        ],
      ),
    ));

    var safeBody = SafeArea(
      top: false,
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          header,
          getCell('images/icon_me_account.png', '我的账户', '购买、充值记录',
              'images/icon_me_arrow.png'),
          getCell('images/icon_me_account.png', '我的账户', '购买、充值记录',
              'images/icon_me_arrow.png'),
          getCell('images/icon_me_account.png', '我的账户', '购买、充值记录',
              'images/icon_me_arrow.png'),
          Container(
            color: Colors.grey.withAlpha(50),
            height: 16,
          ),
          getCell('images/icon_me_account.png', '我的账户', '购买、充值记录',
              'images/icon_me_arrow.png'),
          getCell('images/icon_me_account.png', '我的账户', '购买、充值记录',
              'images/icon_me_arrow.png'),
          getCell('images/icon_me_account.png', '我的账户', '购买、充值记录',
              'images/icon_me_arrow.png'),
          Container(
            color: Colors.grey.withAlpha(50),
            height: 16,
          ),
          getCell('images/icon_me_account.png', '我的账户', '购买、充值记录',
              'images/icon_me_arrow.png'),
        ],
      ),
    );
    return safeBody;
  }

  Widget getHeaderItem(String title, String value) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget getHeaderVipView() {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 24, 8, 0),
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Image.asset('images/icon_me_vip_bg.png'),
          Container(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/icon_me_vip.png',
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '开通会员',
                  style: TextStyle(color: Colors.orange),
                ),
                Spacer(),
                Text(
                  '完本好书免费读',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getCell(String leftImageName, String title, String detail,
      String rightImageName) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Row(
        children: <Widget>[
          Image.asset(leftImageName, width: 26, height: 26),
          SizedBox(
            width: 8,
          ),
          Text(title),
          Spacer(),
          Text(detail),
          Image.asset(rightImageName, width: 14, height: 14),
        ],
      ),
    );
  }
}
