import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/core/model/anchor.dart';

class DXReadLocalJsonScreen extends StatefulWidget {

  static const String routeName = "/DXReadLocalJsonScreen";
  @override
  _DXReadLocalJsonScreenState createState() => _DXReadLocalJsonScreenState();
}

class _DXReadLocalJsonScreenState extends State<DXReadLocalJsonScreen> {

  List<Anchor> anchors = [];

  @override
  void initState() {

    getAnchors().then((anchors) {
      setState(() {
        this.anchors = anchors;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("读取本地JSON"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
//          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: anchors.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(anchors[index].imageUrl,), //fit: BoxFit.contain, height: 80,
                  SizedBox(height: 5),
                  Text(anchors[index].nickname, style: TextStyle(fontSize: 16),),
                  Text(anchors[index].roomName, maxLines: 1, overflow: TextOverflow.ellipsis,)
                ],
              ),
            );
          }),
      )
    );
  }

  Future<List<Anchor>> getAnchors() async{
    // 1.读取json文件
    String jsonString = await rootBundle.loadString("assets/json/category.json");

    // 2.转成list或Map类型
    final jsonResult = json.decode(jsonString);

    List<Anchor> anchors = List();
    for (Map<String, dynamic> map in jsonResult["category"]) {
      anchors.add(Anchor.withMap(map));
    }
    return anchors;
  }


}
