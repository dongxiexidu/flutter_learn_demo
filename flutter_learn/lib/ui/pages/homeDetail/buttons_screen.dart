import 'package:flutter/material.dart';

class DXButtonsScreen extends StatefulWidget {

  static const String routeName = "/DXButtonsScreen";
  @override
  _DXButtonsScreenState createState() => _DXButtonsScreenState();
}

class _DXButtonsScreenState extends State<DXButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             FloatingActionButton(
               child: Icon(Icons.star),
               onPressed: () {
                 
               },
             ),
              SizedBox(height: 10),

              RaisedButton(
                child: Text("RaisedButton"),
                onPressed: (){
                
                }
              ),
              SizedBox(height: 10),
              
              FlatButton(
                child: Text("FlatButton"),
                onPressed: (){
              
                }, 
              ),
              SizedBox(height: 10),
              
              OutlineButton(
                child: Text("OutlineButton"),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                  style: BorderStyle.solid
                ),
                onPressed: (){

                }
              ),
              SizedBox(height: 10),

              RaisedButton(
                child: Text("Custom RaisedButton",style: TextStyle(color: Colors.white)),
                color: Colors.orange,
                highlightColor: Colors.orangeAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                onPressed: (){
                  print("Custom RaisedButton");
                }
              ),
  
          
            ]
        ),
      ),
    );
  }
}

/*
*  1.继承关系:
*   RaiseButton FlatButton OutlineButton都是继承 MaterialButton继承StatelessWidget
*   FloatingActionButton继承StatelessWidget
*  2.RaisedButton 默认灰色背景,并且有阴影,小圆角,一般场景都使用RaisedButton
*  3.FlatButton 默认是空白的,看起来像一个纯文本
*  4.OutlineButton 默认有边框
*
* */