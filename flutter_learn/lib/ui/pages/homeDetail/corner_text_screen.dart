import 'package:flutter/material.dart';

class DXCornerTextScreen extends StatefulWidget {

  static const String routeName = "/DXCornerTextScreen";
  @override
  _DXCornerTextScreenState createState() => _DXCornerTextScreenState();
}

class _DXCornerTextScreenState extends State<DXCornerTextScreen> {
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
