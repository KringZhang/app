import 'package:flutter/material.dart';

/// 下单tab
class Order extends StatefulWidget {
  Order({Key key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('下单'),
    );
  }
}
