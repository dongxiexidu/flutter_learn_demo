import 'package:flutter/material.dart';

import 'package:flutter_learn/ui/pages/homeDetail/buttons_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_cirleAvatar_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_clipOval_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_clipRRect_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_text_screen.dart';
import 'package:flutter_learn/ui/pages/main/mainScreen.dart';

class DXRouter {

  static final String initialRoute = DXMainScreen.routeName;


  static final Map<String, WidgetBuilder> routes = {
    DXMainScreen.routeName: (ctx) => DXMainScreen(),
    DXCornerTextScreen.routeName: (ctx) => DXCornerTextScreen(),
    DXCornerImgCircleAvatarScreen.routeName: (ctx) => DXCornerImgCircleAvatarScreen(),
    DXCornerImgClipOvalScreen.routeName: (ctx) => DXCornerImgClipOvalScreen(),
    DXCornerImgClipRRectScreen.routeName: (ctx) => DXCornerImgClipRRectScreen(),
    DXButtonsScreen.routeName: (ctx) => DXButtonsScreen(),
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