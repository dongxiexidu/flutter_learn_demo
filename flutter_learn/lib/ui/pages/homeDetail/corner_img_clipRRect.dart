import 'package:flutter/material.dart';

class DXCornerImgClipRRect extends StatefulWidget {

  static const String routeName = "/DXCornerImgClipRRect";
  @override
  _DXCornerImgClipRRectState createState() => _DXCornerImgClipRRectState();
}

class _DXCornerImgClipRRectState extends State<DXCornerImgClipRRect> {
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
