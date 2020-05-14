import 'package:flutter/material.dart';

class DXStarRatingScreen extends StatefulWidget {

  static const String routeName = "/DXStarRatingScreen";

  @override
  _DXStarRatingScreenState createState() => _DXStarRatingScreenState();
}

class _DXStarRatingScreenState extends State<DXStarRatingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("评星-DXStartRating"),
      ),
      body: Center(
        child: DXStartRating(
          rating: 8.5,
          maxRating: 10,
          unselectedColor: Colors.grey,
          selectedColor: Colors.red,
        ),
      ),
    );
  }

}





class DXStartRating extends StatefulWidget {


  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;
  final Widget selectedImage;
  final Widget unselectedImage;

  DXStartRating({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffe0aa46),
    Widget unselectedImage,
    Widget selectedImage
  }) : unselectedImage = unselectedImage ?? Icon(Icons.star, size: size, color: unselectedColor),
        selectedImage = selectedImage ?? Icon(Icons.star, size: size, color: selectedColor);

  @override
  _DXStartRatingState createState() => _DXStartRatingState();
}

class _DXStartRatingState extends State<DXStartRating> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Row(
            children: getUnselectedImage(),
            mainAxisSize: MainAxisSize.min,
          ),
          Row(
            children: getSelectImage(),
            mainAxisSize: MainAxisSize.min,
          )
        ],
      ),
    );
  }


  List<Widget> getUnselectedImage() {
    return List.generate(widget.count, (index) {
      return widget.unselectedImage;
    });
  }

  List<Widget> getSelectImage() {

    // 1.计算Star个数和剩余比例等
    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating / oneValue).floor();
    double leftValue = widget.rating - entireCount * oneValue;
    double leftRatio = leftValue / oneValue;

    // 2.获取start
    List<Widget> selectedImages = [];
    for (int i = 0; i < entireCount; i++) {
      selectedImages.add(widget.selectedImage);
    }

    // 3.计算
    Widget leftStar = ClipRect(
      clipper: MyRectClipper(width: leftRatio * widget.size),
      child: widget.selectedImage,
    );
    selectedImages.add(leftStar);

    return selectedImages;
  }


}


class MyRectClipper extends CustomClipper<Rect> {
  final double width;

  MyRectClipper({this.width});

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(MyRectClipper oldClipper) {
    return width != oldClipper.width;
  }

}