import 'package:flutter/material.dart';

class DXDashedLineScreen extends StatefulWidget {

   static const String routeName = "/DXDashedLineScreen";

  @override
  _DXDashedLineScreenState createState() => _DXDashedLineScreenState();
}

class _DXDashedLineScreenState extends State<DXDashedLineScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("虚线-DashedLine"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              DXDashedLine(axis: Axis.horizontal, count: 30),
              Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    child: DXDashedLine(axis: Axis.vertical,dashedWidth: 1,dashedHeight: 5,)
                  ),
                  SizedBox(width: 198,),
                  Container(
                    height: 100,
                    child: DXDashedLine(axis: Axis.vertical,dashedWidth: 1,dashedHeight: 5,)
                  ),
                ],
              ),
              DXDashedLine(axis: Axis.horizontal, count: 30),
            ],
          ),
        ),
      ),
    );
  }

}


class DXDashedLine extends StatelessWidget {

  // 如果不写final,类名DXDashedLine会报警告
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  DXDashedLine({
    @required this.axis,
    this.dashedWidth = 5,
    this.dashedHeight = 1,
    this.count = 10,
    this.color = const Color(0xffff0000)
  });


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: this.axis,  // 由此来确定是用Column 还是 row
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(this.count, (int index) {
            return buildSizedBox();
          }),
        );
      },
    );
  }

  // 使用sizedBox来做虚线
  SizedBox buildSizedBox() {
    return SizedBox(
      width: dashedWidth,
      height: dashedHeight,
      child: DecoratedBox(
          decoration: BoxDecoration(color: color)
      ),
    );
  }
}
