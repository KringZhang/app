import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function cb;
  final Color color;
  const MyButton(this.text, this.cb, {Key key, this.color = Colors.lightBlue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      color: color,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: () {
        cb();
      },
    );
  }
}
