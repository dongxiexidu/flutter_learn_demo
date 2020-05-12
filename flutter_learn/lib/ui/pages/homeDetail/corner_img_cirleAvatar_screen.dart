import 'package:flutter/material.dart';

class DXCornerImgCircleAvatarScreen extends StatefulWidget {

  static const String routeName = "/DXCornerImgCircleAvatarScreen";
  @override
  _DXCornerImgCircleAvatarScreenState createState() => _DXCornerImgCircleAvatarScreenState();
}

class _DXCornerImgCircleAvatarScreenState extends State<DXCornerImgCircleAvatarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CircleAvatar"),
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
