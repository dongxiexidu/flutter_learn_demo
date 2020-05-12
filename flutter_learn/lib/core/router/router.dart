
import 'package:flutter/material.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_cirleAvatar.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_clipOval.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_clipRRect.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_text.dart';
import 'package:flutter_learn/ui/pages/main/mainScreen.dart';

class DXRouter {

  static final String initialRoute = DXMainScreen.routeName;


  static final Map<String, WidgetBuilder> routes = {
    DXMainScreen.routeName: (ctx) => DXMainScreen(),
    DXCornerText.routeName: (ctx) => DXCornerText(),
    DXCornerImgCircleAvatar.routeName: (ctx) => DXCornerImgCircleAvatar(),
    DXCornerImgClipOval.routeName: (ctx) => DXCornerImgClipOval(),
    DXCornerImgClipRRect.routeName: (ctx) => DXCornerImgClipRRect(),
  };

  // 自己扩展
  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  // 自己扩展
  static final RouteFactory unknownRoute = (settings) {
    return null;
  };

}