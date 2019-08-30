import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BookLibaryCate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BookLibaryCateState();
  }
}

class BookLibaryCateState extends State {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          // if (index == 0) {
          //   return getSwiper();
          // } else {
          //   return getItemCell();
          // }
          return getItemCell();
        },
      ),
    );
  }

  Widget getSwiper() {
    return Center(
      child: Column(
        children: <Widget>[
          Swiper(
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage('images/icon_swiper_1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: 5,
            itemHeight: 180,
            onTap: (index) {
              print('taped swiper item in ' + index.toString());
            },
            outer: true,
            pagination: SwiperPagination(
              alignment: Alignment.bottomRight,
              builder: DotSwiperPaginationBuilder(
                activeColor: Colors.grey.withAlpha(125),
                color: Colors.grey.withAlpha(80),
                activeSize: 12,
                size: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getItemCell() {
    return Align(
      child: Padding(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Row(
          children: <Widget>[
            Image.asset(
              'images/icon_swiper_2.png',
              width: 77,
              height: 99,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Container(
                // padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '十宗罪4',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '本书根据真实案例改编而成，涉案地名人名均为化名，十起恐怖凶案就发生在我们身边，每一......',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      softWrap: true,
                      maxLines: 2,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '蜘蛛',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 1, 5, 1),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              border: Border.all(color: Colors.grey.withAlpha(200), width: 0.5),
                            ),
                            child: Text(
                              '限免',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey.withAlpha(200),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
