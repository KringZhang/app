import 'package:flutter/material.dart';

/// 我的-tab
class Mine extends StatefulWidget {
  Mine({Key key}) : super(key: key);

  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('我的'),
    );
  }
}
