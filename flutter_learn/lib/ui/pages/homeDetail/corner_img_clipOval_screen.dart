import 'package:flutter/material.dart';

class DXCornerImgClipOvalScreen extends StatefulWidget {

  static const String routeName = "/DXCornerImgClipOvalScreen";
  @override
  _DXCornerImgClipOvalScreenState createState() => _DXCornerImgClipOvalScreenState();
}

class _DXCornerImgClipOvalScreenState extends State<DXCornerImgClipOvalScreen> {
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
