
// 系统库
import 'package:flutter/material.dart';

// 自定义
import 'package:flutter_learn/core/router/router.dart';
import 'package:flutter_learn/ui/shared/app_theme.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 学习',
      theme: DXAppTheme.norTheme,
      initialRoute: DXRouter.initialRoute,
      routes: DXRouter.routes,
      onGenerateRoute: DXRouter.generateRoute,
      onUnknownRoute: DXRouter.unknownRoute,
    );
  }
}