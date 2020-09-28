import 'package:flutter/material.dart';

class Advertisement extends StatefulWidget {
  final String id;
  Advertisement({Key key, this.id = ''}) : super(key: key);

  @override
  _AdvertisementState createState() => _AdvertisementState();
}

class _AdvertisementState extends State<Advertisement> {
  @override
  Widget build(BuildContext context) {
    print(widget);
    return Scaffold(
      appBar: AppBar(
        title: Text('广告'),
      ),
      body: Text('广告内容'),
    );
  }
}
