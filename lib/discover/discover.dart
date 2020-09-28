import 'package:flutter/material.dart';

/// 发现-tab
class Discover extends StatefulWidget {
  Discover({Key key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('发现'),
    );
  }
}
