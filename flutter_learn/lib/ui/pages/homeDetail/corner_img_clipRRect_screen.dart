import 'package:flutter/material.dart';

class DXCornerImgClipRRectScreen extends StatefulWidget {

  static const String routeName = "/DXCornerImgClipRRectScreen";
  @override
  _DXCornerImgClipRRectScreenState createState() => _DXCornerImgClipRRectScreenState();
}

class _DXCornerImgClipRRectScreenState extends State<DXCornerImgClipRRectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipOval"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
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
