import 'package:flutter/material.dart';

class DXCornerText extends StatefulWidget {

  static const String routeName = "/DXCornerText";
  @override
  _DXCornerTextState createState() => _DXCornerTextState();
}

class _DXCornerTextState extends State<DXCornerText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本圆角"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(child: Text("#1")),
            SizedBox(height: 10),
            CircleAvatar(child: Text("#2")),
            SizedBox(height: 10),
            CircleAvatar(child: Text("#3"))
          ]
        ),
      ),
    );
  }
}
