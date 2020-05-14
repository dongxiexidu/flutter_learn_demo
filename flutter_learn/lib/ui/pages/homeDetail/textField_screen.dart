import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class DXTextFieldScreen extends StatefulWidget {

  static const String routeName = "/DXTextFieldScreen";
  @override
  _DXTextFieldScreenState createState() => _DXTextFieldScreenState();
}

class _DXTextFieldScreenState extends State<DXTextFieldScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextFieldDemo()
                ),
              ]
          ),
        ),
      ),
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // 给textField添加 默认值
    textEditingController.text = "Hello captain";
    textEditingController.addListener((){
      print("textEditingController:${textEditingController.text}");
    });

  }

  @override
  Widget build(BuildContext context) {
    return TextField(

      // 添加控制器,进行监听
      controller: textEditingController,
      // 设置输入框相关的样式
      decoration: InputDecoration(
        icon: Icon(Icons.people, color: Colors.lightGreen),
        labelText: "请输入手机号",
        hintText: "手机号",
       // border: InputBorder.none,
        filled: true,
        fillColor: Colors.white70,
      ),
      obscureText: false, // 是否密码
      style: TextStyle(fontSize: 18, color: Colors.red),
      // 允许的输入格式,仅能输入数字
      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
      maxLength: 11,
      maxLines: 1,
      onChanged: (value) {
        print("onchanged: $value");
      },
      onSubmitted: (value) {
        print("onSubmitted: $value");
      },
    );
  }
}

/*
*
*
* */