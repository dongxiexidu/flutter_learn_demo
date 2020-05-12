import 'package:flutter/material.dart';

class DXCornerImgClipOval extends StatefulWidget {

  static const String routeName = "/DXCornerImgClipOval";
  @override
  _DXCornerImgClipOvalState createState() => _DXCornerImgClipOvalState();
}

class _DXCornerImgClipOvalState extends State<DXCornerImgClipOval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipOval"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          // ClipOval 通常只在头像使用
          child: ClipOval(
            child: Image.network(
              "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
              width: 200,
              height: 200,
            ),
          )

        ),
      ),
    );
  }
}
