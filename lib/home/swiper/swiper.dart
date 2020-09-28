import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/// 轮播图
class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> swiperList = [
    {'url': 'https://www.itying.com/images/flutter/1.png'},
    {'url': 'https://www.itying.com/images/flutter/2.png'},
    {'url': 'https://www.itying.com/images/flutter/3.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
      ),
      body: Container(
        width: double.infinity,
        height: 150,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  swiperList[index]['url'],
                  fit: BoxFit.cover,
                );
              },
              itemCount: swiperList.length,
              pagination: SwiperPagination(),
              autoplay: true,
              onTap: (int index) {
                print(index);
                if (index == 0) {
                  Navigator.of(context).pushNamed('/advertisement');
                }
              }),
        ),
      ),
    );
  }
}
