import 'package:flutter/material.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_cirleAvatar.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_clipOval.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_img_clipRRect.dart';
import 'package:flutter_learn/ui/pages/homeDetail/corner_text.dart';

List<String> mainTitles = [
  "文本圆角 CircleAvatar",
  "圆角图像1 CircleAvatar",
  "圆角图像2 ClipOval",
  "圆角图像3 ClipRRect",

];



class DXHomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: ListTile(
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
        Navigator.of(context).pushNamed(DXCornerText.routeName);
        break;
      case 1:
        Navigator.of(context).pushNamed(DXCornerImgCircleAvatar.routeName);
        break;
      case 2:
        Navigator.of(context).pushNamed(DXCornerImgClipOval.routeName);
        break;
      case 3:
        Navigator.of(context).pushNamed(DXCornerImgClipRRect.routeName);
        break;
    }
  }
}
