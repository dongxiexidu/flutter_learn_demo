import 'package:flutter/material.dart';

class DXCornerImgContainerScreen extends StatefulWidget {

  static const String routeName = "/DXCornerImgContainerScreen";
  @override
  _DXCornerImgContainerScreenState createState() => _DXCornerImgContainerScreenState();
}

class _DXCornerImgContainerScreenState extends State<DXCornerImgContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage("https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg")
                )
              ),
            )

        ),
      ),
    );
  }
}
