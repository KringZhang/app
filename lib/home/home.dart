import 'package:flutter/material.dart';
import 'package:myapp/common/components/button.dart';
import 'package:url_launcher/url_launcher.dart';

/// 首页tab
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('广告'),
              onPressed: () {
                Navigator.of(context).pushNamed('/advertisement');
              },
            ),
            Container(
              child: RaisedButton(
                child: Text('广告'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/advertisement');
                },
                color: Colors.yellow,
                textColor: Colors.blue,
              ),
            ),
            OutlineButton(
              child: Text('广告'),
              onPressed: () {
                Navigator.of(context).pushNamed('/advertisement');
              },
            ),
            FloatingActionButton(
              child: Text('广告'),
              onPressed: () {
                Navigator.of(context).pushNamed('/advertisement');
              },
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          width: double.infinity,
          // height: 50,
          child: RaisedButton(
            child: Text('广告'),
            onPressed: () {
              Navigator.of(context).pushNamed('/advertisement');
            },
            color: Colors.yellow,
            textColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            // shape: CircleBorder(
            //   side: BorderSide(
            //     color: Colors.red,
            //     width: 1,
            //   ),
            // ),
          ),
        ),
        MyButton(
          '我的按钮',
          () => Navigator.of(context).pushNamed('/advertisement'),
          color: Colors.red,
        ),
        MyButton(
          '轮播图组件',
          () => Navigator.of(context).pushNamed('/swiper'),
        ),
        MyButton(
          '打开外部网址',
          _launchUrl,
        ),
      ],
    );
  }
}

_launchUrl() async {
  // const url = 'https://flutter.dev';
  // if (await canLaunch(url)) {
  //   await launch(url);
  // } else {
  //   throw 'could not launch $url';
  // }
  const tel = 'tel:10086';
  if (await canLaunch(tel)) {
    await launch(tel);
  } else {
    throw 'Could not launch $tel';
  }
}
