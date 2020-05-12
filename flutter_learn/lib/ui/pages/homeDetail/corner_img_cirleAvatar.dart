import 'package:flutter/material.dart';

class DXCornerImgCircleAvatar extends StatefulWidget {

  static const String routeName = "/DXCornerImgCirclAvatar";
  @override
  _DXCornerImgCircleAvatarState createState() => _DXCornerImgCircleAvatarState();
}

class _DXCornerImgCircleAvatarState extends State<DXCornerImgCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本圆角"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage("https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"),
            child: Container(
              color: Colors.red,
              alignment: Alignment.center,
              width: 200,
              height: 20,
              child: Text("兵长利威尔")
            ),
          ),

        ),
      ),
    );
  }
}
