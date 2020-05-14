import 'package:flutter/material.dart';
import 'package:flutter_learn/ui/pages/homeDetail/dashedLine_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/buttons_screen.dart';

import 'package:flutter_learn/ui/pages/homeDetail/corner_img_cirleAvatar_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_clipOval_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_clipRRect_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_text_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/star_rating_screen.dart';
import 'package:flutter_learn/ui/pages/homeDetail/textField_screen.dart';

List<String> mainTitles = [
  "文本圆角 CircleAvatar",
  "圆角图像1 CircleAvatar",
  "圆角图像2 ClipOval",
  "圆角图像3 ClipRRect",
  "按钮 Buttons",
  "输入框 TextField",
  "虚线的封装",
  "评星的封装",
];



class DXHomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
            title: Text(mainTitles[index]),
            trailing: Icon(Icons.arrow_forward_ios)
          ),
          onTap: () {
            jump(index, context);
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(color: Colors.grey);
      },
      itemCount: mainTitles.length,
    );
  }

  void jump(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.of(context).pushNamed(DXCornerTextScreen.routeName);
        break;
      case 1:
        Navigator.of(context).pushNamed(DXCornerImgCircleAvatarScreen.routeName);
        break;
      case 2:
        Navigator.of(context).pushNamed(DXCornerImgClipOvalScreen.routeName);
        break;
      case 3:
        Navigator.of(context).pushNamed(DXCornerImgClipRRectScreen.routeName);
        break;
      case 4:
        Navigator.of(context).pushNamed(DXButtonsScreen.routeName);
        break;
      case 5:
        Navigator.of(context).pushNamed(DXTextFieldScreen.routeName);
        break;
      case 6:
        Navigator.of(context).pushNamed(DXDashedLineScreen.routeName);
        break;
      case 7:
        Navigator.of(context).pushNamed(DXStarRatingScreen.routeName);
        break;
    }
  }
}
