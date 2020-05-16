import 'package:flutter/material.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_container_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/dashedLine_screen.dart';

import 'package:flutter_learn/ui/pages/homeDetail/buttons_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_cirleAvatar_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_clipOval_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_clipRRect_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_text_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/read_local_json.dart';
import 'package:flutter_learn/ui/pages/homeDetail/star_rating_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/textField_screen.dart';
import 'package:flutter_learn/ui/pages/main/mainScreen.dart';

class DXRouter {

  static final String initialRoute = DXMainScreen.routeName;


  static final Map<String, WidgetBuilder> routes = {
    DXMainScreen.routeName: (ctx) => DXMainScreen(),
    DXCornerTextScreen.routeName: (ctx) => DXCornerTextScreen(),
    DXCornerImgCircleAvatarScreen.routeName: (ctx) => DXCornerImgCircleAvatarScreen(),
    DXCornerImgClipOvalScreen.routeName: (ctx) => DXCornerImgClipOvalScreen(),
    DXCornerImgClipRRectScreen.routeName: (ctx) => DXCornerImgClipRRectScreen(),
    DXCornerImgContainerScreen.routeName: (ctx) => DXCornerImgContainerScreen(),
    DXButtonsScreen.routeName: (ctx) => DXButtonsScreen(),
    DXTextFieldScreen.routeName: (ctx) => DXTextFieldScreen(),
    DXDashedLineScreen.routeName:  (ctx) => DXDashedLineScreen(),
    DXStarRatingScreen.routeName:  (ctx) => DXStarRatingScreen(),
    DXReadLocalJsonScreen.routeName: (ctx) => DXReadLocalJsonScreen(),
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