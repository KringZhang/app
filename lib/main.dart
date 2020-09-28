import 'package:flutter/material.dart';
import 'package:myapp/discover/discover.dart';
import 'package:myapp/home/home.dart';
import 'package:myapp/mine/mine.dart';
import 'package:myapp/order/order.dart';
import 'package:myapp/routers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter',
      routes: routers,
      initialRoute: '/',
      home: Tabs(),
    );
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List<Widget> _pageList = [
    Home(),
    Order(),
    Discover(),
    Mine(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('leading'),
        title: Text('title'),
        actions: <Widget>[
          Icon(Icons.access_alarm),
          Icon(Icons.message),
        ],
      ),
      body: Container(
        child: _pageList[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.yellow,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: this._currentIndex,
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('首页'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('下单'),
            icon: Icon(Icons.ac_unit),
          ),
          BottomNavigationBarItem(
            title: Text('发现'),
            icon: Icon(Icons.find_in_page),
          ),
          BottomNavigationBarItem(
            title: Text('我的'),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
